import 'package:pulumi/pulumi.dart';
import 'access_policy_args2.dart';

/// Create an `AccessPolicy`. Fails if this organization already has a `AccessPolicy`. The longrunning Operation will have a successful status once the `AccessPolicy` has propagated to long-lasting storage. Syntactic and basic semantic errors will be returned in `metadata` as a BadRequest proto.
/// Auto-naming is currently not supported for this resource.
class AccessPolicy2 extends CustomResource {
  /// Resource name of the `AccessPolicy`. Format: `accessPolicies/{policy_id}`
  late final Output<String> name;

  /// The parent of this `AccessPolicy` in the Cloud Resource Hierarchy. Currently immutable once created. Format: `organizations/{organization_id}`
  late final Output<String> parent;

  /// Human readable title. Does not affect behavior.
  late final Output<String> title;

  AccessPolicy2(
    String name, {
    AccessPolicyArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:accesscontextmanager/v1beta:AccessPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.name = Output.createUnknown<String>();
    this.parent = Output.createUnknown<String>();
    this.title = Output.createUnknown<String>();
  }
}
