// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DirectoryBucketAccessPointScopeScope {
  /// You can specify a list of API operations as permissions for the access point.
  final pulumi.Input<List<String>>? permissions;
  /// You can specify a list of prefixes, but the total length of characters of all prefixes must be less than 256 bytes.
  ///
  /// * For more information on access point scope, see [AWS Documentation](https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points-directory-buckets-manage-scope.html).
  final pulumi.Input<List<String>>? prefixes;

  /// Creates a new [DirectoryBucketAccessPointScopeScope].
  /// [permissions] You can specify a list of API operations as permissions for the access point.
  /// [prefixes] You can specify a list of prefixes, but the total length of characters of all prefixes must be less than 256 bytes.
  DirectoryBucketAccessPointScopeScope({
    this.permissions,
    this.prefixes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'permissions': ?permissions,
      'prefixes': ?prefixes,
    };
  }

  factory DirectoryBucketAccessPointScopeScope.fromMap(Map<String, dynamic> map) {
    return DirectoryBucketAccessPointScopeScope(
      permissions: (() { final guardedValue = map['permissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      prefixes: (() { final guardedValue = map['prefixes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

