// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of IamInstanceProfile
class IamInstanceProfileResponse {
  /// <p>The Amazon Resource Name (ARN) of the instance profile.</p>
  final pulumi.Input<String>? arn;
  /// <p>The ID of the instance profile.</p>
  final pulumi.Input<String>? id;

  /// Creates a new [IamInstanceProfileResponse].
  /// [arn] <p>The Amazon Resource Name (ARN) of the instance profile.</p>
  /// [id] <p>The ID of the instance profile.</p>
  IamInstanceProfileResponse({
    this.arn,
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'id': ?id,
    };
  }

  factory IamInstanceProfileResponse.fromMap(Map<String, dynamic> map) {
    return IamInstanceProfileResponse(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
    );
  }
}

