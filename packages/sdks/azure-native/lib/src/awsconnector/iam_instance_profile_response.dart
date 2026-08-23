// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of IamInstanceProfile
class IamInstanceProfileResponse {
  /// &lt;p&gt;The Amazon Resource Name (ARN) of the instance profile.&lt;/p&gt;
  final pulumi.Input<String>? arn;
  /// &lt;p&gt;The ID of the instance profile.&lt;/p&gt;
  final pulumi.Input<String>? id;

  /// Creates a new [IamInstanceProfileResponse].
  /// [arn] &lt;p&gt;The Amazon Resource Name (ARN) of the instance profile.&lt;/p&gt;
  /// [id] &lt;p&gt;The ID of the instance profile.&lt;/p&gt;
  const IamInstanceProfileResponse({
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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
