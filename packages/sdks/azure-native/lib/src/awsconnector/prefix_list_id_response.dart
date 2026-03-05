// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of PrefixListId
class PrefixListIdResponse {
  /// &lt;p&gt;A description for the security group rule that references this prefix list ID.&lt;/p&gt; &lt;p&gt;Constraints: Up to 255 characters in length. Allowed characters are a-z, A-Z, 0-9, spaces, and ._-:/()#,@[]+=;{}!$*&lt;/p&gt;
  final pulumi.Input<String>? description;
  /// &lt;p&gt;The ID of the prefix.&lt;/p&gt;
  final pulumi.Input<String>? prefixListId;

  /// Creates a new [PrefixListIdResponse].
  /// [description] &lt;p&gt;A description for the security group rule that references this prefix list ID.&lt;/p&gt; &lt;p&gt;Constraints: Up to 255 characters in length. Allowed characters are a-z, A-Z, 0-9, spaces, and ._-:/()#,@[]+=;{}!$*&lt;/p&gt;
  /// [prefixListId] &lt;p&gt;The ID of the prefix.&lt;/p&gt;
  PrefixListIdResponse({
    this.description,
    this.prefixListId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'prefixListId': ?prefixListId,
    };
  }

  factory PrefixListIdResponse.fromMap(Map<String, dynamic> map) {
    return PrefixListIdResponse(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prefixListId: (() { final guardedValue = map['prefixListId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

