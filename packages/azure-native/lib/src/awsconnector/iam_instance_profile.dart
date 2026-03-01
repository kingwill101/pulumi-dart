// ignore_for_file: unused_element, unnecessary_cast


/// Definition of IamInstanceProfile
class IamInstanceProfile {
  /// <p>The Amazon Resource Name (ARN) of the instance profile.</p>
  final String? arn;
  /// <p>The ID of the instance profile.</p>
  final String? id;

  /// Creates a new [IamInstanceProfile].
  /// [arn] <p>The Amazon Resource Name (ARN) of the instance profile.</p>
  /// [id] <p>The ID of the instance profile.</p>
  IamInstanceProfile({
    this.arn,
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'id': ?id,
    };
  }

  factory IamInstanceProfile.fromMap(Map<String, dynamic> map) {
    return IamInstanceProfile(
      arn: map['arn'] == null ? null : map['arn'] as String,
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}

