// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMapConfiguration {
  /// The map style selected from an available data provider.
  final pulumi.Input<String> style;

  /// Creates a new [GetMapConfiguration].
  /// [style] The map style selected from an available data provider.
  GetMapConfiguration({
    required this.style,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'style': style,
    };
  }

  factory GetMapConfiguration.fromMap(Map<String, dynamic> map) {
    return GetMapConfiguration(
      style: (map['style'] as String).input(),
    );
  }
}

