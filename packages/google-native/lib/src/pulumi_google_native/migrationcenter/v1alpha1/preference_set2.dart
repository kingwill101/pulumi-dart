import 'package:pulumi/pulumi.dart';
import 'preference_set_args2.dart';
import 'virtual_machine_preferences_response2.dart';

/// Creates a new preference set in a given project and location.
/// Auto-naming is currently not supported for this resource.
class PreferenceSet2 extends CustomResource {
  /// The timestamp when the preference set was created.
  late final Output<String> createTime;

  /// A description of the preference set.
  late final Output<String> description;

  /// User-friendly display name. Maximum length is 63 characters.
  late final Output<String> displayName;
  late final Output<String> location;

  /// Name of the preference set.
  late final Output<String> name;
  late final Output<String?> preferenceSetId;
  late final Output<String> project;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// The timestamp when the preference set was last updated.
  late final Output<String> updateTime;

  /// A set of preferences that applies to all virtual machines in the context.
  late final Output<VirtualMachinePreferencesResponse2>
      virtualMachinePreferences;

  PreferenceSet2(
    String name, {
    PreferenceSetArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:migrationcenter/v1alpha1:PreferenceSet',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.preferenceSetId = Output.createUnknown<String?>();
    this.project = Output.createUnknown<String>();
    this.requestId = Output.createUnknown<String?>();
    this.updateTime = Output.createUnknown<String>();
    this.virtualMachinePreferences =
        Output.createUnknown<VirtualMachinePreferencesResponse2>();
  }
}
