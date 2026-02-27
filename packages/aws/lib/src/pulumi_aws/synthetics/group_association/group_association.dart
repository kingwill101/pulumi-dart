import 'package:pulumi/pulumi.dart';
import 'group_association_args.dart';

/// Provides a Synthetics Group Association resource.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import CloudWatch Synthetics Group Association using the `canary_arn,group_name`. For example:
///
/// ```sh
/// $ pulumi import aws:synthetics/groupAssociation:GroupAssociation example arn:aws:synthetics:us-west-2:123456789012:canary:tf-acc-test-abcd1234,examplename
/// ```
class GroupAssociation extends CustomResource {
  /// ARN of the canary.
  late final Output<String> canaryArn;
  late final Output<String> groupArn;

  /// ID of the Group.
  late final Output<String> groupId;

  /// Name of the group that the canary will be associated with.
  late final Output<String> groupName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  GroupAssociation(
    String name, {
    GroupAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:synthetics/groupAssociation:GroupAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.canaryArn = registerOutput<String>('canaryArn');
    this.groupArn = registerOutput<String>('groupArn');
    this.groupId = registerOutput<String>('groupId');
    this.groupName = registerOutput<String>('groupName');
    this.region = registerOutput<String>('region');
  }
}
