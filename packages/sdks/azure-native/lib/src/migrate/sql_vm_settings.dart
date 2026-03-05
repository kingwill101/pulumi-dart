// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SQL VM assessment settings.
class SqlVmSettings {
  /// Gets or sets the Azure VM families (calling instance series to keep it
  /// consistent with other targets).
  final pulumi.Input<List<String>>? instanceSeries;

  /// Creates a new [SqlVmSettings].
  /// [instanceSeries] Gets or sets the Azure VM families (calling instance series to keep it
  SqlVmSettings({
    this.instanceSeries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceSeries': ?instanceSeries,
    };
  }

  factory SqlVmSettings.fromMap(Map<String, dynamic> map) {
    return SqlVmSettings(
      instanceSeries: (() { final guardedValue = map['instanceSeries']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

