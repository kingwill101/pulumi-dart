// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebAppWebAppUnit {
  final pulumi.Input<int> provisioned;

  /// Creates a new [WebAppWebAppUnit].
  /// [provisioned] Required.
  WebAppWebAppUnit({
    required this.provisioned,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provisioned': provisioned,
    };
  }

  factory WebAppWebAppUnit.fromMap(Map<String, dynamic> map) {
    return WebAppWebAppUnit(
      provisioned: pulumi.Input.fromValue(map['provisioned'] as int),
    );
  }
}

