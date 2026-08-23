// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of IamInstanceProfile
class IamInstanceProfile {
  /// &lt;p&gt;The Amazon Resource Name (ARN) of the instance profile.&lt;/p&gt;
  final pulumi.Input<String>? arn;
  /// &lt;p&gt;The ID of the instance profile.&lt;/p&gt;
  final pulumi.Input<String>? id;

  /// Creates a new [IamInstanceProfile].
  /// [arn] &lt;p&gt;The Amazon Resource Name (ARN) of the instance profile.&lt;/p&gt;
  /// [id] &lt;p&gt;The ID of the instance profile.&lt;/p&gt;
  const IamInstanceProfile({
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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
