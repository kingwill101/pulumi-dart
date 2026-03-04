// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCollationTimeZonesCollationTimeZone {
  /// The code of the instance type.
  final pulumi.Input<String>? description;

  /// The offset of the UTC time. The offset is in the following format: (UTC+&lt;i&gt;HH:mm&lt;/i&gt;).
  final pulumi.Input<String>? standardTimeOffset;

  /// The time zone that is available for use in ApsaraDB RDS.
  final pulumi.Input<String>? timeZone;

  /// Creates a new [GetCollationTimeZonesCollationTimeZone].
  /// [description] The code of the instance type.
  /// [standardTimeOffset] The offset of the UTC time. The offset is in the following format: (UTC+&lt;i&gt;HH:mm&lt;/i&gt;).
  /// [timeZone] The time zone that is available for use in ApsaraDB RDS.
  GetCollationTimeZonesCollationTimeZone({
    this.description,
    this.standardTimeOffset,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'standardTimeOffset': ?standardTimeOffset,
      'timeZone': ?timeZone,
    };
  }

  factory GetCollationTimeZonesCollationTimeZone.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetCollationTimeZonesCollationTimeZone(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      standardTimeOffset: (() {
        final guardedValue = map['standardTimeOffset'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      timeZone: (() {
        final guardedValue = map['timeZone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
