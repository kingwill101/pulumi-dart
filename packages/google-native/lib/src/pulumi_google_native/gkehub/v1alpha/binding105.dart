import 'package:pulumi/pulumi.dart';
import 'binding_args2.dart';
import 'membership_binding_lifecycle_state_response2.dart';

/// Creates a MembershipBinding.
/// Auto-naming is currently not supported for this resource.
class Binding105 extends CustomResource {
  /// When the membership binding was created.
  late final Output<String> createTime;

  /// When the membership binding was deleted.
  late final Output<String> deleteTime;

  /// Optional. Labels for this MembershipBinding.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// Required. The ID to use for the MembershipBinding.
  late final Output<String> membershipBindingId;
  late final Output<String> membershipId;

  /// The resource name for the membershipbinding itself `projects/{project}/locations/{location}/memberships/{membership}/bindings/{membershipbinding}`
  late final Output<String> name;
  late final Output<String> project;

  /// A Scope resource name in the format `projects/*/locations/*/scopes/*`.
  late final Output<String> scope;

  /// State of the membership binding resource.
  late final Output<MembershipBindingLifecycleStateResponse2> state;

  /// Google-generated UUID for this resource. This is unique across all membershipbinding resources. If a membershipbinding resource is deleted and another resource with the same name is created, it gets a different uid.
  late final Output<String> uid;

  /// When the membership binding was last updated.
  late final Output<String> updateTime;

  Binding105(
    String name, {
    BindingArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:gkehub/v1alpha:Binding',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.deleteTime = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.location = Output.createUnknown<String>();
    this.membershipBindingId = Output.createUnknown<String>();
    this.membershipId = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.scope = Output.createUnknown<String>();
    this.state =
        Output.createUnknown<MembershipBindingLifecycleStateResponse2>();
    this.uid = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
