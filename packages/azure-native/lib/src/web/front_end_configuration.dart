// ignore_for_file: unused_element, unnecessary_cast

import 'front_end_service_type.dart';

class FrontEndConfiguration {
  final FrontEndServiceType? kind;

  /// Creates a new [FrontEndConfiguration].
  /// [kind] Optional.
  FrontEndConfiguration({
    this.kind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': ?kind == null ? null : kind!.value,
    };
  }

  factory FrontEndConfiguration.fromMap(Map<String, dynamic> map) {
    return FrontEndConfiguration(
      kind: map['kind'] == null ? null : FrontEndServiceType.fromValue(map['kind'] as String),
    );
  }
}

