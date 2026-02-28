import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_stored_info_type_version_response.dart';
import 'stored_info_type_args.dart';

/// Creates a pre-built stored infoType to be used for inspection. See https://cloud.google.com/dlp/docs/creating-stored-infotypes to learn more.
/// Auto-naming is currently not supported for this resource.
class StoredInfoType extends pulumi.CustomResource {
  /// Current version of the stored info type.
  late final pulumi.Output<GooglePrivacyDlpV2StoredInfoTypeVersionResponse>
      currentVersion;
  late final pulumi.Output<String> location;

  /// Resource name.
  late final pulumi.Output<String> name;

  /// Pending versions of the stored info type. Empty if no versions are pending.
  late final pulumi
      .Output<List<GooglePrivacyDlpV2StoredInfoTypeVersionResponse>>
      pendingVersions;
  late final pulumi.Output<String> project;

  /// Creates a new [StoredInfoType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StoredInfoType]. {@macro pulumi_dlp_v2_stored_info_type_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StoredInfoType(
    String name, {
    StoredInfoTypeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:dlp/v2:StoredInfoType',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.currentVersion =
        registerOutput<GooglePrivacyDlpV2StoredInfoTypeVersionResponse>(
            'currentVersion');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.pendingVersions =
        registerOutput<List<GooglePrivacyDlpV2StoredInfoTypeVersionResponse>>(
            'pendingVersions');
    this.project = registerOutput<String>('project');
  }
}
