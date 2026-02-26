import 'package:pulumi/pulumi.dart';
import 'inbound_sso_assignment_args.dart';
import 'saml_sso_info_response.dart';
import 'sign_in_behavior_response.dart';

/// Creates an InboundSsoAssignment for users and devices in a `Customer` under a given `Group` or `OrgUnit`.
/// Auto-naming is currently not supported for this resource.
class InboundSsoAssignment extends CustomResource {
  /// Immutable. The customer. For example: `customers/C0123abc`.
  late final Output<String> customer;

  /// [Resource name](https://cloud.google.com/apis/design/resource_names) of the Inbound SSO Assignment.
  late final Output<String> name;

  /// Must be zero (which is the default value so it can be omitted) for assignments with `target_org_unit` set and must be greater-than-or-equal-to one for assignments with `target_group` set.
  late final Output<int> rank;

  /// SAML SSO details. Must be set if and only if `sso_mode` is set to `SAML_SSO`.
  late final Output<SamlSsoInfoResponse> samlSsoInfo;

  /// Assertions about users assigned to an IdP will always be accepted from that IdP. This controls whether/when Google should redirect a user to the IdP. Unset (defaults) is the recommended configuration.
  late final Output<SignInBehaviorResponse> signInBehavior;

  /// Inbound SSO behavior.
  late final Output<String> ssoMode;

  /// Immutable. Must be of the form `groups/{group}`.
  late final Output<String> targetGroup;

  /// Immutable. Must be of the form `orgUnits/{org_unit}`.
  late final Output<String> targetOrgUnit;

  InboundSsoAssignment(
    String name, {
    InboundSsoAssignmentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:cloudidentity/v1:InboundSsoAssignment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.customer = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.rank = Output.createUnknown<int>();
    this.samlSsoInfo = Output.createUnknown<SamlSsoInfoResponse>();
    this.signInBehavior = Output.createUnknown<SignInBehaviorResponse>();
    this.ssoMode = Output.createUnknown<String>();
    this.targetGroup = Output.createUnknown<String>();
    this.targetOrgUnit = Output.createUnknown<String>();
  }
}
