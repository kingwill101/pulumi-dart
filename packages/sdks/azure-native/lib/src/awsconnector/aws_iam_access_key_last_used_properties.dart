// ignore_for_file: unused_element, unnecessary_cast


/// Definition of awsIamAccessKeyLastUsed
class AwsIamAccessKeyLastUsedProperties {
  /// <p>The date and time, in <a href='http://www.iso.org/iso/iso8601'>ISO 8601 date-time format</a>, when the access key was most recently used. This field is null in the following situations:</p> <ul> <li> <p>The user does not have an access key.</p> </li> <li> <p>An access key exists but has not been used since IAM began tracking this information.</p> </li> <li> <p>There is no sign-in data associated with the user.</p> </li> </ul>
  final String? lastUsedDate;
  /// <p>The Amazon Web Services Region where this access key was most recently used. The value for this field is 'N/A' in the following situations:</p> <ul> <li> <p>The user does not have an access key.</p> </li> <li> <p>An access key exists but has not been used since IAM began tracking this information.</p> </li> <li> <p>There is no sign-in data associated with the user.</p> </li> </ul> <p>For more information about Amazon Web Services Regions, see <a href='https://docs.aws.amazon.com/general/latest/gr/rande.html'>Regions and endpoints</a> in the Amazon Web Services General Reference.</p>
  final String? region;
  /// <p>The name of the Amazon Web Services service with which this access key was most recently used. The value of this field is 'N/A' in the following situations:</p> <ul> <li> <p>The user does not have an access key.</p> </li> <li> <p>An access key exists but has not been used since IAM started tracking this information.</p> </li> <li> <p>There is no sign-in data associated with the user.</p> </li> </ul>
  final String? serviceName;

  /// Creates a new [AwsIamAccessKeyLastUsedProperties].
  /// [lastUsedDate] <p>The date and time, in <a href='http://www.iso.org/iso/iso8601'>ISO 8601 date-time format</a>, when the access key was most recently used. This field is null in the following situations:</p> <ul> <li> <p>The user does not have an access key.</p> </li> <li> <p>An access key exists but has not been used since IAM began tracking this information.</p> </li> <li> <p>There is no sign-in data associated with the user.</p> </li> </ul>
  /// [region] <p>The Amazon Web Services Region where this access key was most recently used. The value for this field is 'N/A' in the following situations:</p> <ul> <li> <p>The user does not have an access key.</p> </li> <li> <p>An access key exists but has not been used since IAM began tracking this information.</p> </li> <li> <p>There is no sign-in data associated with the user.</p> </li> </ul> <p>For more information about Amazon Web Services Regions, see <a href='https://docs.aws.amazon.com/general/latest/gr/rande.html'>Regions and endpoints</a> in the Amazon Web Services General Reference.</p>
  /// [serviceName] <p>The name of the Amazon Web Services service with which this access key was most recently used. The value of this field is 'N/A' in the following situations:</p> <ul> <li> <p>The user does not have an access key.</p> </li> <li> <p>An access key exists but has not been used since IAM started tracking this information.</p> </li> <li> <p>There is no sign-in data associated with the user.</p> </li> </ul>
  AwsIamAccessKeyLastUsedProperties({
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
      lastUsedDate: map['lastUsedDate'] == null ? null : map['lastUsedDate'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      serviceName: map['serviceName'] == null ? null : map['serviceName'] as String,
    );
  }
}

