import 'package:pulumi/pulumi.dart' as pulumi;
import 'preference_set_migrationcenter_v1alpha1_args.dart';
import 'virtual_machine_preferences_response_migrationcenter_v1alpha1.dart';

/// Creates a new preference set in a given project and location.
/// Auto-naming is currently not supported for this resource.
class PreferenceSetMigrationcenterV1alpha1 extends pulumi.CustomResource {
  /// The timestamp when the preference set was created.
  late final pulumi.Output<String> createTime;

  /// A description of the preference set.
  late final pulumi.Output<String> description;

  /// User-friendly display name. Maximum length is 63 characters.
  late final pulumi.Output<String> displayName;
  late final pulumi.Output<String> location;

  /// Name of the preference set.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String?> preferenceSetId;
  late final pulumi.Output<String> project;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;

  /// The timestamp when the preference set was last updated.
  late final pulumi.Output<String> updateTime;

  /// A set of preferences that applies to all virtual machines in the context.
  late final pulumi.Output<
    VirtualMachinePreferencesResponseMigrationcenterV1alpha1
  >
  virtualMachinePreferences;

  /// Creates a new [PreferenceSetMigrationcenterV1alpha1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PreferenceSetMigrationcenterV1alpha1]. {@macro pulumi_migrationcenter_v1alpha1_preference_set_migrationcenter_v1alpha1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PreferenceSetMigrationcenterV1alpha1(
    String name, {
    PreferenceSetMigrationcenterV1alpha1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:migrationcenter/v1alpha1:PreferenceSet',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.preferenceSetId = registerOutput<String?>('preferenceSetId');
    this.project = registerOutput<String>('project');
    this.requestId = registerOutput<String?>('requestId');
    this.updateTime = registerOutput<String>('updateTime');
    this.virtualMachinePreferences =
        registerOutput<
          VirtualMachinePreferencesResponseMigrationcenterV1alpha1
        >('virtualMachinePreferences');
  }
}
