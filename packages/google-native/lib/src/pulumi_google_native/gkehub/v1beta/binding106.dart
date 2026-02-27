import 'package:pulumi/pulumi.dart' hide Config;
import 'binding_args3.dart';
import 'membership_binding_lifecycle_state_response3.dart';

/// Creates a MembershipBinding.
/// Auto-naming is currently not supported for this resource.
class Binding106 extends CustomResource {
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
  late final Output<MembershipBindingLifecycleStateResponse3> state;

  /// Google-generated UUID for this resource. This is unique across all membershipbinding resources. If a membershipbinding resource is deleted and another resource with the same name is created, it gets a different uid.
  late final Output<String> uid;

  /// When the membership binding was last updated.
  late final Output<String> updateTime;

  Binding106(
    String name, {
    BindingArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:gkehub/v1beta:Binding',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.membershipBindingId = registerOutput<String>('membershipBindingId');
    this.membershipId = registerOutput<String>('membershipId');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.scope = registerOutput<String>('scope');
    this.state =
        registerOutput<MembershipBindingLifecycleStateResponse3>('state');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
