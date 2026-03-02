// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ResourceRecord
class ResourceRecord {
  /// <p>The current or new DNS record value, not to exceed 4,000 characters. In the case of a <code>DELETE</code> action, if the current value does not match the actual value, an error is returned. For descriptions about how to format <code>Value</code> for different record types, see <a href='https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/ResourceRecordTypes.html'>Supported DNS Resource Record Types</a> in the <i>Amazon Route 53 Developer Guide</i>.</p> <p>You can specify more than one value for all record types except <code>CNAME</code> and <code>SOA</code>. </p> <note> <p>If you're creating an alias resource record set, omit <code>Value</code>.</p> </note>
  final pulumi.Input<String>? value;

  /// Creates a new [ResourceRecord].
  /// [value] <p>The current or new DNS record value, not to exceed 4,000 characters. In the case of a <code>DELETE</code> action, if the current value does not match the actual value, an error is returned. For descriptions about how to format <code>Value</code> for different record types, see <a href='https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/ResourceRecordTypes.html'>Supported DNS Resource Record Types</a> in the <i>Amazon Route 53 Developer Guide</i>.</p> <p>You can specify more than one value for all record types except <code>CNAME</code> and <code>SOA</code>. </p> <note> <p>If you're creating an alias resource record set, omit <code>Value</code>.</p> </note>
  ResourceRecord({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ResourceRecord.fromMap(Map<String, dynamic> map) {
    return ResourceRecord(
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

