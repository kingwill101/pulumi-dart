// ignore_for_file: unused_element, unnecessary_cast

import 'type_enum_value_response.dart';

/// Definition of Grantee
class GranteeResponse {
  /// <p>Screen name of the grantee.</p>
  final String? displayName;
  /// <p>Email address of the grantee.</p> <note> <p>Using email addresses to specify a grantee is only supported in the following Amazon Web Services Regions: </p> <ul> <li> <p>US East (N. Virginia)</p> </li> <li> <p>US West (N. California)</p> </li> <li> <p> US West (Oregon)</p> </li> <li> <p> Asia Pacific (Singapore)</p> </li> <li> <p>Asia Pacific (Sydney)</p> </li> <li> <p>Asia Pacific (Tokyo)</p> </li> <li> <p>Europe (Ireland)</p> </li> <li> <p>South America (São Paulo)</p> </li> </ul> <p>For a list of all the Amazon S3 supported Regions and endpoints, see <a href='https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region'>Regions and Endpoints</a> in the Amazon Web Services General Reference.</p> </note>
  final String? emailAddress;
  /// <p>The canonical user ID of the grantee.</p>
  final String? id;
  /// <p>Type of grantee</p>
  final TypeEnumValueResponse? type;
  /// <p>URI of the grantee group.</p>
  final String? uri;

  /// Creates a new [GranteeResponse].
  /// [displayName] <p>Screen name of the grantee.</p>
  /// [emailAddress] <p>Email address of the grantee.</p> <note> <p>Using email addresses to specify a grantee is only supported in the following Amazon Web Services Regions: </p> <ul> <li> <p>US East (N. Virginia)</p> </li> <li> <p>US West (N. California)</p> </li> <li> <p> US West (Oregon)</p> </li> <li> <p> Asia Pacific (Singapore)</p> </li> <li> <p>Asia Pacific (Sydney)</p> </li> <li> <p>Asia Pacific (Tokyo)</p> </li> <li> <p>Europe (Ireland)</p> </li> <li> <p>South America (São Paulo)</p> </li> </ul> <p>For a list of all the Amazon S3 supported Regions and endpoints, see <a href='https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region'>Regions and Endpoints</a> in the Amazon Web Services General Reference.</p> </note>
  /// [id] <p>The canonical user ID of the grantee.</p>
  /// [type] <p>Type of grantee</p>
  /// [uri] <p>URI of the grantee group.</p>
  GranteeResponse({
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
      'type': ?type == null ? null : type!.toMap(),
      'uri': ?uri,
    };
  }

  factory GranteeResponse.fromMap(Map<String, dynamic> map) {
    return GranteeResponse(
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      emailAddress: map['emailAddress'] == null ? null : map['emailAddress'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      type: map['type'] == null ? null : TypeEnumValueResponse.fromMap((map['type'] as Map).cast<String, dynamic>()),
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}

