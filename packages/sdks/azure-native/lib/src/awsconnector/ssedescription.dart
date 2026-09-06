// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssestatus_enum_value.dart';

/// Definition of SSEDescription
class SSEDescription {
  /// &lt;p&gt;The current state of server-side encryption:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;ENABLING&lt;/code&gt; - Server-side encryption is being enabled.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;ENABLED&lt;/code&gt; - Server-side encryption is enabled.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;DISABLING&lt;/code&gt; - Server-side encryption is being disabled.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;DISABLED&lt;/code&gt; - Server-side encryption is disabled.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
  final pulumi.Input<SSEStatusEnumValue?>? status;

  /// Creates a new [SSEDescription].
  /// [status] &lt;p&gt;The current state of server-side encryption:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;ENABLING&lt;/code&gt; - Server-side encryption is being enabled.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;ENABLED&lt;/code&gt; - Server-side encryption is enabled.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;DISABLING&lt;/code&gt; - Server-side encryption is being disabled.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;DISABLED&lt;/code&gt; - Server-side encryption is disabled.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
  const SSEDescription({
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': ?pulumi.Input.mapOptionalInputValue<SSEStatusEnumValue, Map<String, dynamic>>(status, (value) => value.toMap()),
    };
  }

  factory SSEDescription.fromMap(Map<String, dynamic> map) {
    return SSEDescription(
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SSEStatusEnumValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
