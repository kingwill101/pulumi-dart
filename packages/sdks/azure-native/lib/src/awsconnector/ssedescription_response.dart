// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssestatus_enum_value_response.dart';

/// Definition of SSEDescription
class SSEDescriptionResponse {
  /// &lt;p&gt;The current state of server-side encryption:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;ENABLING&lt;/code&gt; - Server-side encryption is being enabled.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;ENABLED&lt;/code&gt; - Server-side encryption is enabled.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;DISABLING&lt;/code&gt; - Server-side encryption is being disabled.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;DISABLED&lt;/code&gt; - Server-side encryption is disabled.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
  final pulumi.Input<SSEStatusEnumValueResponse>? status;

  /// Creates a new [SSEDescriptionResponse].
  /// [status] &lt;p&gt;The current state of server-side encryption:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;ENABLING&lt;/code&gt; - Server-side encryption is being enabled.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;ENABLED&lt;/code&gt; - Server-side encryption is enabled.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;DISABLING&lt;/code&gt; - Server-side encryption is being disabled.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;DISABLED&lt;/code&gt; - Server-side encryption is disabled.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
  SSEDescriptionResponse({
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': ?pulumi.Input.mapOptionalInputValue<SSEStatusEnumValueResponse, Map<String, dynamic>>(status, (value) => value.toMap()),
    };
  }

  factory SSEDescriptionResponse.fromMap(Map<String, dynamic> map) {
    return SSEDescriptionResponse(
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SSEStatusEnumValueResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

