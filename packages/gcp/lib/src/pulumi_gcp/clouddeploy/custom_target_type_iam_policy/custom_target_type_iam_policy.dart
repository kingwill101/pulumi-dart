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
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
  }
}
