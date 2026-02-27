import 'package:pulumi/pulumi.dart';
import '../plan_stage/plan_stage.dart';
import 'plan_args3.dart';

/// Resource for managing an AWS SSM Contact Plan.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Usage with SSM Contact
///
///
///
/// ### Usage With All Fields
///
///
///
/// ## Import
///
/// Using `pulumi import`, import SSM Contact Plan using the Contact ARN. For example:
///
/// ```sh
/// $ pulumi import aws:ssmcontacts/plan:Plan example {ARNValue}
/// ```
class Plan3 extends CustomResource {
  /// The Amazon Resource Name (ARN) of the contact or escalation plan.
  late final Output<String> contactId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// One or more configuration blocks for specifying a list of stages that the escalation plan or engagement plan uses to engage contacts and contact methods. See Stage below for more details.
  late final Output<List<PlanStage>> stages;

  Plan3(
    String name, {
    PlanArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ssmcontacts/plan:Plan',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.contactId = registerOutput<String>('contactId');
    this.region = registerOutput<String>('region');
    this.stages = registerOutput<List<PlanStage>>('stages');
  }
}
