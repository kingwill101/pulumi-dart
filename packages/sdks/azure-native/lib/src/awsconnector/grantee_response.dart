// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'type_enum_value_response.dart';

/// Definition of Grantee
class GranteeResponse {
  /// &lt;p&gt;Screen name of the grantee.&lt;/p&gt;
  final pulumi.Input<String>? displayName;
  /// &lt;p&gt;Email address of the grantee.&lt;/p&gt; &lt;note&gt; &lt;p&gt;Using email addresses to specify a grantee is only supported in the following Amazon Web Services Regions: &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;US East (N. Virginia)&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;US West (N. California)&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; US West (Oregon)&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; Asia Pacific (Singapore)&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Asia Pacific (Sydney)&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Asia Pacific (Tokyo)&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Europe (Ireland)&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;South America (São Paulo)&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;For a list of all the Amazon S3 supported Regions and endpoints, see &lt;a href='https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region'&gt;Regions and Endpoints&lt;/a&gt; in the Amazon Web Services General Reference.&lt;/p&gt; &lt;/note&gt;
  final pulumi.Input<String>? emailAddress;
  /// &lt;p&gt;The canonical user ID of the grantee.&lt;/p&gt;
  final pulumi.Input<String>? id;
  /// &lt;p&gt;Type of grantee&lt;/p&gt;
  final pulumi.Input<TypeEnumValueResponse>? type;
  /// &lt;p&gt;URI of the grantee group.&lt;/p&gt;
  final pulumi.Input<String>? uri;

  /// Creates a new [GranteeResponse].
  /// [displayName] &lt;p&gt;Screen name of the grantee.&lt;/p&gt;
  /// [emailAddress] &lt;p&gt;Email address of the grantee.&lt;/p&gt; &lt;note&gt; &lt;p&gt;Using email addresses to specify a grantee is only supported in the following Amazon Web Services Regions: &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;US East (N. Virginia)&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;US West (N. California)&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; US West (Oregon)&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; Asia Pacific (Singapore)&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Asia Pacific (Sydney)&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Asia Pacific (Tokyo)&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Europe (Ireland)&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;South America (São Paulo)&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;For a list of all the Amazon S3 supported Regions and endpoints, see &lt;a href='https://docs.aws.amazon.com/general/latest/gr/rande.html#s3_region'&gt;Regions and Endpoints&lt;/a&gt; in the Amazon Web Services General Reference.&lt;/p&gt; &lt;/note&gt;
  /// [id] &lt;p&gt;The canonical user ID of the grantee.&lt;/p&gt;
  /// [type] &lt;p&gt;Type of grantee&lt;/p&gt;
  /// [uri] &lt;p&gt;URI of the grantee group.&lt;/p&gt;
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
      'type': ?pulumi.Input.mapOptionalInputValue<TypeEnumValueResponse, Map<String, dynamic>>(type, (value) => value.toMap()),
      'uri': ?uri,
    };
  }

  factory GranteeResponse.fromMap(Map<String, dynamic> map) {
    return GranteeResponse(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      emailAddress: (() { final guardedValue = map['emailAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TypeEnumValueResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

