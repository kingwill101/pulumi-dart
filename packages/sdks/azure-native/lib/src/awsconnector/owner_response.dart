// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of Owner
class OwnerResponse {
  /// &lt;p&gt;Container for the display name of the owner. This value is only supported in the following Amazon Web Services Regions:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;US East (N. Virginia)&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;US West (N. California)&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;US West (Oregon)&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Asia Pacific (Singapore)&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Asia Pacific (Sydney)&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Asia Pacific (Tokyo)&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Europe (Ireland)&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;South America (São Paulo)&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;note&gt; &lt;p&gt;This functionality is not supported for directory buckets.&lt;/p&gt; &lt;/note&gt;
  final pulumi.Input<String>? displayName;
  /// &lt;p&gt;Container for the ID of the owner.&lt;/p&gt;
  final pulumi.Input<String>? id;

  /// Creates a new [OwnerResponse].
  /// [displayName] &lt;p&gt;Container for the display name of the owner. This value is only supported in the following Amazon Web Services Regions:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;US East (N. Virginia)&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;US West (N. California)&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;US West (Oregon)&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Asia Pacific (Singapore)&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Asia Pacific (Sydney)&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Asia Pacific (Tokyo)&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Europe (Ireland)&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;South America (São Paulo)&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;note&gt; &lt;p&gt;This functionality is not supported for directory buckets.&lt;/p&gt; &lt;/note&gt;
  /// [id] &lt;p&gt;Container for the ID of the owner.&lt;/p&gt;
  const OwnerResponse({
    this.displayName,
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'id': ?id,
    };
  }

  factory OwnerResponse.fromMap(Map<String, dynamic> map) {
    return OwnerResponse(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

