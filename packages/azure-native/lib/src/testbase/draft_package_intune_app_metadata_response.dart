// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'draft_package_intune_app_metadata_item_response.dart';

/// The metadata of Intune app(s) used for generation.
class DraftPackageIntuneAppMetadataResponse {
  /// The Metadata of the Intune App through intunewin file uploading.
  final DraftPackageIntuneAppMetadataItemResponse? intuneApp;
  /// The Metadata of dependencies of the Intune App through intunewin file uploading.
  final List<DraftPackageIntuneAppMetadataItemResponse>? intuneAppDependencies;

  /// Creates a new [DraftPackageIntuneAppMetadataResponse].
  /// [intuneApp] The Metadata of the Intune App through intunewin file uploading.
  /// [intuneAppDependencies] The Metadata of dependencies of the Intune App through intunewin file uploading.
  DraftPackageIntuneAppMetadataResponse({
    this.intuneApp,
    this.intuneAppDependencies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'intuneApp': ?intuneApp == null ? null : intuneApp!.toMap(),
      'intuneAppDependencies': ?intuneAppDependencies == null ? null : pulumi.Input.encodeList<DraftPackageIntuneAppMetadataItemResponse, Map<String, dynamic>>(intuneAppDependencies!, (value) => value.toMap()),
    };
  }

  factory DraftPackageIntuneAppMetadataResponse.fromMap(Map<String, dynamic> map) {
    return DraftPackageIntuneAppMetadataResponse(
      intuneApp: map['intuneApp'] == null ? null : DraftPackageIntuneAppMetadataItemResponse.fromMap((map['intuneApp'] as Map).cast<String, dynamic>()),
      intuneAppDependencies: map['intuneAppDependencies'] == null ? null : pulumi.Input.decodeList<DraftPackageIntuneAppMetadataItemResponse>(map['intuneAppDependencies'], (value) => DraftPackageIntuneAppMetadataItemResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

