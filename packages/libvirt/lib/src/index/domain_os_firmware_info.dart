// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_os_firmware_info_feature.dart';

class DomainOsFirmwareInfo {
  /// Lists the optional features supported by the firmware.
  final List<DomainOsFirmwareInfoFeature>? features;

  /// Creates a new [DomainOsFirmwareInfo].
  /// [features] Lists the optional features supported by the firmware.
  DomainOsFirmwareInfo({
    this.features,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'features': ?features == null ? null : pulumi.Input.encodeList<DomainOsFirmwareInfoFeature, Map<String, dynamic>>(features!, (value) => value.toMap()),
    };
  }

  factory DomainOsFirmwareInfo.fromMap(Map<String, dynamic> map) {
    return DomainOsFirmwareInfo(
      features: map['features'] == null ? null : pulumi.Input.decodeList<DomainOsFirmwareInfoFeature>(map['features'], (value) => DomainOsFirmwareInfoFeature.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

