/// The scheduling strategy to use for the service. For more information, see [Services](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs_services.html). There are two service scheduler strategies available:  +   ``REPLICA``-The replica scheduling strategy places and maintains the desired number of tasks across your cluster. By default, the service scheduler spreads tasks across Availability Zones. You can use task placement strategies and constraints to customize task placement decisions. This scheduler strategy is required if the service uses the ``CODE_DEPLOY`` or ``EXTERNAL`` deployment controller types.  +   ``DAEMON``-The daemon scheduling strategy deploys exactly one task on each active container instance that meets all of the task placement constraints that you specify in your cluster. The service scheduler also evaluates the task placement constraints for running tasks and will stop tasks that don't meet the placement constraints. When you're using this strategy, you don't need to specify a desired number of tasks, a task placement strategy, or use Service Auto Scaling policies.  Tasks using the Fargate launch type or the ``CODE_DEPLOY`` or ``EXTERNAL`` deployment controller types don't support the ``DAEMON`` scheduling strategy.
enum SchedulingStrategy {
  dAEMON("DAEMON"),
  rEPLICA("REPLICA");

  const SchedulingStrategy(this.wireValue);
  final String wireValue;

  static SchedulingStrategy fromValue(String value) {
    for (final item in SchedulingStrategy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SchedulingStrategy value: $value');
  }
}
