// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getDataLakeSettings.
class GetDataLakeSettingsArgs {
  /// Identifier for the Data Catalog. By default, the account ID.
  final Input<String>? catalogId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetDataLakeSettingsArgs({
    this.catalogId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final catalogIdValue = catalogId;
    if (catalogIdValue != null) {
      map['catalogId'] = catalogIdValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetDataLakeSettingsArgs.fromMap(Map<String, dynamic> map) {
    return GetDataLakeSettingsArgs(
      catalogId: Input.asOptionalInput<String>(map['catalogId']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
