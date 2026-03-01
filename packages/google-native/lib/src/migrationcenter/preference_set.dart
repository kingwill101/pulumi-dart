import 'package:pulumi/pulumi.dart' as pulumi;
import 'preference_set_args.dart';
import 'virtual_machine_preferences_response.dart';

/// Creates a new preference set in a given project and location.
/// Auto-naming is currently not supported for this resource.
class PreferenceSet extends pulumi.CustomResource {
  /// The timestamp when the preference set was created.
  late final pulumi.Output<String> createTime;

  /// A description of the preference set.
  late final pulumi.Output<String> description;

  /// User-friendly display name. Maximum length is 63 characters.
  late final pulumi.Output<String> displayName;
  late final pulumi.Output<String> location;

  /// Name of the preference set.
  late final pulumi.Output<String> name;

  /// Required. User specified ID for the preference set. It will become the last component of the preference set name. The ID must be unique within the project, must conform with RFC-1034, is restricted to lower-cased letters, and has a maximum length of 63 characters. The ID must match the regular expression `[a-z]([a-z0-9-]{0,61}[a-z0-9])?`.
  late final pulumi.Output<String> preferenceSetId;
  late final pulumi.Output<String> project;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;

  /// The timestamp when the preference set was last updated.
  late final pulumi.Output<String> updateTime;

  /// A set of preferences that applies to all virtual machines in the context.
  late final pulumi.Output<VirtualMachinePreferencesResponse>
  virtualMachinePreferences;

  /// Creates a new [PreferenceSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PreferenceSet]. {@macro pulumi_migrationcenter_v1_preference_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PreferenceSet(
    String name, {
    PreferenceSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:migrationcenter/v1:PreferenceSet',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.preferenceSetId = registerOutput<String>('preferenceSetId');
    this.project = registerOutput<String>('project');
    this.requestId = registerOutput<String?>('requestId');
    this.updateTime = registerOutput<String>('updateTime');
    this.virtualMachinePreferences =
        registerOutput<VirtualMachinePreferencesResponse>(
          'virtualMachinePreferences',
        );
  }
}
