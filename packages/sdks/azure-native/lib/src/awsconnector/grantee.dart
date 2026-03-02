// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'type_enum_value.dart';

/// Definition of Grantee
class Grantee {
  /// <p>Screen name of the grantee.</p>
  final pulumi.Input<String>? displayName;
  /// <p>Email address of the grantee.</p> <note> <p>Using email addresses to specify a grantee is only supported in the following Amazon Web Services Regions: </p> <ul> <li> <p>US East (N. Virginia)</p> </li> <li> <p>US West (N. California)</p> </li> <li> <p> US West (Oregon)</p> </li> <li> <p> Asia Pacific (Singapore)</p> </li> <li> <p>Asia Pacific (Sydney)</p> </li> <li> <p>Asia Pacific (Tokyo)</p> </li> <li> <p>Europe (Ireland)</p> </li> <li> <p>South America (São Paulo)</p> </li> </ul> <p>For a list of all the Amazon S3 supported Regions and endpoints, see <a href='https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region'>Regions and Endpoints</a> in the Amazon Web Services General Reference.</p> </note>
  final pulumi.Input<String>? emailAddress;
  /// <p>The canonical user ID of the grantee.</p>
  final pulumi.Input<String>? id;
  /// <p>Type of grantee</p>
  final pulumi.Input<TypeEnumValue>? type;
  /// <p>URI of the grantee group.</p>
  final pulumi.Input<String>? uri;

  /// Creates a new [Grantee].
  /// [displayName] <p>Screen name of the grantee.</p>
  /// [emailAddress] <p>Email address of the grantee.</p> <note> <p>Using email addresses to specify a grantee is only supported in the following Amazon Web Services Regions: </p> <ul> <li> <p>US East (N. Virginia)</p> </li> <li> <p>US West (N. California)</p> </li> <li> <p> US West (Oregon)</p> </li> <li> <p> Asia Pacific (Singapore)</p> </li> <li> <p>Asia Pacific (Sydney)</p> </li> <li> <p>Asia Pacific (Tokyo)</p> </li> <li> <p>Europe (Ireland)</p> </li> <li> <p>South America (São Paulo)</p> </li> </ul> <p>For a list of all the Amazon S3 supported Regions and endpoints, see <a href='https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region'>Regions and Endpoints</a> in the Amazon Web Services General Reference.</p> </note>
  /// [id] <p>The canonical user ID of the grantee.</p>
  /// [type] <p>Type of grantee</p>
  /// [uri] <p>URI of the grantee group.</p>
  Grantee({
    this.displayName,
    this.emailAddress,
    this.id,
    this.type,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'emailAddress': ?emailAddress,
      'id': ?id,
      'type': ?pulumi.Input.mapOptionalInputValue<TypeEnumValue, Map<String, dynamic>>(type, (value) => value.toMap()),
      'uri': ?uri,
    };
  }

  factory Grantee.fromMap(Map<String, dynamic> map) {
    return Grantee(
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      emailAddress: map['emailAddress'] == null ? null : (map['emailAddress'] as String).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      type: map['type'] == null ? null : (TypeEnumValue.fromMap((map['type'] as Map).cast<String, dynamic>())).input(),
      uri: map['uri'] == null ? null : (map['uri'] as String).input(),
    );
  }
}

