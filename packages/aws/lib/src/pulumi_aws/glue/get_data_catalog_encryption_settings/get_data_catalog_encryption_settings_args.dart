// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDataCatalogEncryptionSettings.
class GetDataCatalogEncryptionSettingsArgs {
  /// ID of the Data Catalog. This is typically the AWS account ID.
  final pulumi.Input<String> catalogId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  GetDataCatalogEncryptionSettingsArgs({
    required this.catalogId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['catalogId'] = catalogId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetDataCatalogEncryptionSettingsArgs.fromMap(
      Map<String, dynamic> map) {
    return GetDataCatalogEncryptionSettingsArgs(
      catalogId: pulumi.Input.asInput<String>(map['catalogId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
