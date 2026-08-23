// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of awsIamAccessKeyLastUsed
class AwsIamAccessKeyLastUsedProperties {
  /// &lt;p&gt;The date and time, in &lt;a href='http://www.iso.org/iso/iso8601'&gt;ISO 8601 date-time format&lt;/a&gt;, when the access key was most recently used. This field is null in the following situations:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;The user does not have an access key.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;An access key exists but has not been used since IAM began tracking this information.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;There is no sign-in data associated with the user.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
  final pulumi.Input<String>? lastUsedDate;
  /// &lt;p&gt;The Amazon Web Services Region where this access key was most recently used. The value for this field is 'N/A' in the following situations:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;The user does not have an access key.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;An access key exists but has not been used since IAM began tracking this information.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;There is no sign-in data associated with the user.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;For more information about Amazon Web Services Regions, see &lt;a href='https://docs.aws.amazon.com/general/latest/gr/rande.html'&gt;Regions and endpoints&lt;/a&gt; in the Amazon Web Services General Reference.&lt;/p&gt;
  final pulumi.Input<String>? region;
  /// &lt;p&gt;The name of the Amazon Web Services service with which this access key was most recently used. The value of this field is 'N/A' in the following situations:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;The user does not have an access key.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;An access key exists but has not been used since IAM started tracking this information.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;There is no sign-in data associated with the user.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
  final pulumi.Input<String>? serviceName;

  /// Creates a new [AwsIamAccessKeyLastUsedProperties].
  /// [lastUsedDate] &lt;p&gt;The date and time, in &lt;a href='http://www.iso.org/iso/iso8601'&gt;ISO 8601 date-time format&lt;/a&gt;, when the access key was most recently used. This field is null in the following situations:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;The user does not have an access key.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;An access key exists but has not been used since IAM began tracking this information.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;There is no sign-in data associated with the user.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
  /// [region] &lt;p&gt;The Amazon Web Services Region where this access key was most recently used. The value for this field is 'N/A' in the following situations:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;The user does not have an access key.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;An access key exists but has not been used since IAM began tracking this information.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;There is no sign-in data associated with the user.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;For more information about Amazon Web Services Regions, see &lt;a href='https://docs.aws.amazon.com/general/latest/gr/rande.html'&gt;Regions and endpoints&lt;/a&gt; in the Amazon Web Services General Reference.&lt;/p&gt;
  /// [serviceName] &lt;p&gt;The name of the Amazon Web Services service with which this access key was most recently used. The value of this field is 'N/A' in the following situations:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;The user does not have an access key.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;An access key exists but has not been used since IAM started tracking this information.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;There is no sign-in data associated with the user.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
  const AwsIamAccessKeyLastUsedProperties({
    this.lastUsedDate,
    this.region,
    this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastUsedDate': ?lastUsedDate,
      'region': ?region,
      'serviceName': ?serviceName,
    };
  }

  factory AwsIamAccessKeyLastUsedProperties.fromMap(Map<String, dynamic> map) {
    return AwsIamAccessKeyLastUsedProperties(
      lastUsedDate: (() { final guardedValue = map['lastUsedDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceName: (() { final guardedValue = map['serviceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
