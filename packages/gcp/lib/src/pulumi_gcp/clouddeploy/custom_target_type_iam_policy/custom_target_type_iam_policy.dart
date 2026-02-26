import 'package:pulumi/pulumi.dart';
import 'custom_target_type_iam_policy_args.dart';

class CustomTargetTypeIamPolicy extends CustomResource {
  late final Output<String> etag;
  late final Output<String> location;
  late final Output<String> name;
  late final Output<String> policyData;
  late final Output<String> project;

  CustomTargetTypeIamPolicy(
    String name, {
    CustomTargetTypeIamPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:clouddeploy/customTargetTypeIamPolicy:CustomTargetTypeIamPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.etag = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.policyData = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
  }
}
