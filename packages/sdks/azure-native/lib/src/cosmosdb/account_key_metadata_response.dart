// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The metadata related to an access key for a given database account.
class AccountKeyMetadataResponse {
  /// Generation time in UTC of the key in ISO-8601 format. If the value is missing from the object, it means that the last key regeneration was triggered before 2022-06-18.
  final pulumi.Input<String> generationTime;

  /// Creates a new [AccountKeyMetadataResponse].
  /// [generationTime] Generation time in UTC of the key in ISO-8601 format. If the value is missing from the object, it means that the last key regeneration was triggered before 2022-06-18.
  AccountKeyMetadataResponse({
    required this.generationTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'generationTime': generationTime,
    };
  }

  factory AccountKeyMetadataResponse.fromMap(Map<String, dynamic> map) {
    return AccountKeyMetadataResponse(
      generationTime: (map['generationTime'] as String).input(),
    );
  }
}

