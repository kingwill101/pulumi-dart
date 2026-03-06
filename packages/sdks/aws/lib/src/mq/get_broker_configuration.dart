// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBrokerConfiguration {
  /// Configuration ID.
  final pulumi.Input<String> id;
  /// Revision of the Configuration.
  final pulumi.Input<int> revision;

  /// Creates a new [GetBrokerConfiguration].
  /// [id] Configuration ID.
  /// [revision] Revision of the Configuration.
  const GetBrokerConfiguration({
    required this.id,
    required this.revision,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'revision': revision,
    };
  }

  factory GetBrokerConfiguration.fromMap(Map<String, dynamic> map) {
    return GetBrokerConfiguration(
      id: pulumi.Input.fromValue(map['id'] as String),
      revision: pulumi.Input.fromValue(map['revision'] as int),
    );
  }
}

