import 'package:pulumi/pulumi.dart' hide Config;
import 'google_privacy_dlp_v2_stored_info_type_version_response.dart';
import 'stored_info_type_args.dart';

/// Creates a pre-built stored infoType to be used for inspection. See https://cloud.google.com/dlp/docs/creating-stored-infotypes to learn more.
/// Auto-naming is currently not supported for this resource.
class StoredInfoType extends CustomResource {
  /// Current version of the stored info type.
  late final Output<GooglePrivacyDlpV2StoredInfoTypeVersionResponse>
      currentVersion;
  late final Output<String> location;

  /// Resource name.
  late final Output<String> name;

  /// Pending versions of the stored info type. Empty if no versions are pending.
  late final Output<List<GooglePrivacyDlpV2StoredInfoTypeVersionResponse>>
      pendingVersions;
  late final Output<String> project;

  StoredInfoType(
    String name, {
    StoredInfoTypeArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:dlp/v2:StoredInfoType',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
