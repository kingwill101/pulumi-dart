// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ResourceRecord
class ResourceRecordResponse {
  /// &lt;p&gt;The current or new DNS record value, not to exceed 4,000 characters. In the case of a &lt;code&gt;DELETE&lt;/code&gt; action, if the current value does not match the actual value, an error is returned. For descriptions about how to format &lt;code&gt;Value&lt;/code&gt; for different record types, see &lt;a href='https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/ResourceRecordTypes.html'&gt;Supported DNS Resource Record Types&lt;/a&gt; in the &lt;i&gt;Amazon Route 53 Developer Guide&lt;/i&gt;.&lt;/p&gt; &lt;p&gt;You can specify more than one value for all record types except &lt;code&gt;CNAME&lt;/code&gt; and &lt;code&gt;SOA&lt;/code&gt;. &lt;/p&gt; &lt;note&gt; &lt;p&gt;If you're creating an alias resource record set, omit &lt;code&gt;Value&lt;/code&gt;.&lt;/p&gt; &lt;/note&gt;
  final pulumi.Input<String>? value;

  /// Creates a new [ResourceRecordResponse].
  /// [value] &lt;p&gt;The current or new DNS record value, not to exceed 4,000 characters. In the case of a &lt;code&gt;DELETE&lt;/code&gt; action, if the current value does not match the actual value, an error is returned. For descriptions about how to format &lt;code&gt;Value&lt;/code&gt; for different record types, see &lt;a href='https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/ResourceRecordTypes.html'&gt;Supported DNS Resource Record Types&lt;/a&gt; in the &lt;i&gt;Amazon Route 53 Developer Guide&lt;/i&gt;.&lt;/p&gt; &lt;p&gt;You can specify more than one value for all record types except &lt;code&gt;CNAME&lt;/code&gt; and &lt;code&gt;SOA&lt;/code&gt;. &lt;/p&gt; &lt;note&gt; &lt;p&gt;If you're creating an alias resource record set, omit &lt;code&gt;Value&lt;/code&gt;.&lt;/p&gt; &lt;/note&gt;
  ResourceRecordResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ResourceRecordResponse.fromMap(Map<String, dynamic> map) {
    return ResourceRecordResponse(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

