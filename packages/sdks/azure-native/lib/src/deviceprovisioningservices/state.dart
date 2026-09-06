import 'package:pulumi/pulumi.dart' as pulumi;

/// Current state of the provisioning service.
enum State implements pulumi.PulumiEnum<String> {
  valueActivating("Activating"),
  valueActive("Active"),
  valueDeleting("Deleting"),
  valueDeleted("Deleted"),
  valueActivationFailed("ActivationFailed"),
  valueDeletionFailed("DeletionFailed"),
  valueTransitioning("Transitioning"),
  valueSuspending("Suspending"),
  valueSuspended("Suspended"),
  valueResuming("Resuming"),
  valueFailingOver("FailingOver"),
  valueFailoverFailed("FailoverFailed");

  const State(this.wireValue);
  @override
  final String wireValue;

  static State fromValue(String value) {
    for (final item in State.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown State value: $value');
  }
}
