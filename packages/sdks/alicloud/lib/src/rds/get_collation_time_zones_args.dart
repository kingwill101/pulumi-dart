// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_collation_time_zones_collation_time_zone.dart';

/// {@template pulumi_rds_get_collation_time_zones_get_collation_time_zones_args_doc}
/// Arguments for getCollationTimeZones.
/// {@endtemplate}
/// {@macro pulumi_rds_get_collation_time_zones_get_collation_time_zones_args_doc}
class GetCollationTimeZonesArgs {
  /// An array that consists of the character set collations and time zones that are available for
  /// use in ApsaraDB RDS.
  final pulumi.Input<List<GetCollationTimeZonesCollationTimeZone>>?
  collationTimeZones;

  /// File name where to save data source results (after running `pulumi up`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetCollationTimeZonesArgs].
  /// [collationTimeZones] An array that consists of the character set collations and time zones that are available for
  /// [outputFile] File name where to save data source results (after running `pulumi up`).
  GetCollationTimeZonesArgs({this.collationTimeZones, this.outputFile});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collationTimeZones':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetCollationTimeZonesCollationTimeZone>,
            List<Map<String, dynamic>>
          >(
            collationTimeZones,
            (value) =>
                pulumi.Input.encodeList<
                  GetCollationTimeZonesCollationTimeZone,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'outputFile': ?outputFile,
    };
  }

  factory GetCollationTimeZonesArgs.fromMap(Map<String, dynamic> map) {
    return GetCollationTimeZonesArgs(
      collationTimeZones: (() {
        final guardedValue = map['collationTimeZones'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GetCollationTimeZonesCollationTimeZone>(
            guardedValue,
            (value) => GetCollationTimeZonesCollationTimeZone.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
