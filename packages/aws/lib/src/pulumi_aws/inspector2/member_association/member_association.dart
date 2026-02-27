import 'package:pulumi/pulumi.dart' as pulumi;
import 'member_association_args.dart';

/// Resource for associating accounts to existing Inspector instances.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Amazon Inspector Member Association using the `account_id`. For example:
///
/// ```sh
/// $ pulumi import aws:inspector2/memberAssociation:MemberAssociation example 123456789012
/// ```
class MemberAssociation extends pulumi.CustomResource {
  /// ID of the account to associate
  late final pulumi.Output<String> accountId;

  /// Account ID of the delegated administrator account
  late final pulumi.Output<String> delegatedAdminAccountId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Status of the member relationship
  late final pulumi.Output<String> relationshipStatus;

  /// Date and time of the last update of the relationship
  late final pulumi.Output<String> updatedAt;

  MemberAssociation(
    String name, {
    MemberAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:inspector2/memberAssociation:MemberAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.delegatedAdminAccountId =
        registerOutput<String>('delegatedAdminAccountId');
    this.region = registerOutput<String>('region');
    this.relationshipStatus = registerOutput<String>('relationshipStatus');
    this.updatedAt = registerOutput<String>('updatedAt');
  }
}
