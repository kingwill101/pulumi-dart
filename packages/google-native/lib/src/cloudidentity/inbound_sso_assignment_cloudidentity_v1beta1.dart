import 'package:pulumi/pulumi.dart' as pulumi;
import 'inbound_sso_assignment_cloudidentity_v1beta1_args.dart';
import 'saml_sso_info_response_cloudidentity_v1beta1.dart';
import 'sign_in_behavior_response_cloudidentity_v1beta1.dart';

/// Creates an InboundSsoAssignment for users and devices in a `Customer` under a given `Group` or `OrgUnit`.
/// Auto-naming is currently not supported for this resource.
class InboundSsoAssignmentCloudidentityV1beta1 extends pulumi.CustomResource {
  /// Immutable. The customer. For example: `customers/C0123abc`.
  late final pulumi.Output<String> customer;

  /// [Resource name](https://cloud.google.com/apis/design/resource_names) of the Inbound SSO Assignment.
  late final pulumi.Output<String> name;

  /// Must be zero (which is the default value so it can be omitted) for assignments with `target_org_unit` set and must be greater-than-or-equal-to one for assignments with `target_group` set.
  late final pulumi.Output<int> rank;

  /// SAML SSO details. Must be set if and only if `sso_mode` is set to `SAML_SSO`.
  late final pulumi.Output<SamlSsoInfoResponseCloudidentityV1beta1> samlSsoInfo;

  /// Assertions about users assigned to an IdP will always be accepted from that IdP. This controls whether/when Google should redirect a user to the IdP. Unset (defaults) is the recommended configuration.
  late final pulumi.Output<SignInBehaviorResponseCloudidentityV1beta1>
  signInBehavior;

  /// Inbound SSO behavior.
  late final pulumi.Output<String> ssoMode;

  /// Immutable. Must be of the form `groups/{group}`.
  late final pulumi.Output<String> targetGroup;

  /// Immutable. Must be of the form `orgUnits/{org_unit}`.
  late final pulumi.Output<String> targetOrgUnit;

  /// Creates a new [InboundSsoAssignmentCloudidentityV1beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InboundSsoAssignmentCloudidentityV1beta1]. {@macro pulumi_cloudidentity_v1beta1_inbound_sso_assignment_cloudidentity_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InboundSsoAssignmentCloudidentityV1beta1(
    String name, {
    InboundSsoAssignmentCloudidentityV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:cloudidentity/v1beta1:InboundSsoAssignment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.customer = registerOutput<String>('customer');
    this.name = registerOutput<String>('name');
    this.rank = registerOutput<int>('rank');
    this.samlSsoInfo = registerOutput<SamlSsoInfoResponseCloudidentityV1beta1>(
      'samlSsoInfo',
    );
    this.signInBehavior =
        registerOutput<SignInBehaviorResponseCloudidentityV1beta1>(
          'signInBehavior',
        );
    this.ssoMode = registerOutput<String>('ssoMode');
    this.targetGroup = registerOutput<String>('targetGroup');
    this.targetOrgUnit = registerOutput<String>('targetOrgUnit');
  }
}
