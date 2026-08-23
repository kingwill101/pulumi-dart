// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServerlessCollectionVectorOption {
  /// Status of serverless vector acceleration for the collection. One of `ENABLED`, `DISABLED`, or `ALLOWED`.
  final pulumi.Input<String> serverlessVectorAcceleration;

  /// Creates a new [ServerlessCollectionVectorOption].
  /// [serverlessVectorAcceleration] Status of serverless vector acceleration for the collection. One of `ENABLED`, `DISABLED`, or `ALLOWED`.
  const ServerlessCollectionVectorOption({
    required this.serverlessVectorAcceleration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serverlessVectorAcceleration': serverlessVectorAcceleration,
    };
  }

  factory ServerlessCollectionVectorOption.fromMap(Map<String, dynamic> map) {
    return ServerlessCollectionVectorOption(
      serverlessVectorAcceleration: pulumi.Input.fromValue(map['serverlessVectorAcceleration'] as String),
    );
  }
}
