// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of awsWafWebACLSummary
class AwsWafWebACLSummaryProperties {
  /// <p>A friendly name or description of the <a>WebACL</a>. You can't change the name of a <code>WebACL</code> after you create it.</p>
  final pulumi.Input<String>? name;
  /// <p>A unique identifier for a <code>WebACL</code>. You use <code>WebACLId</code> to get information about a <code>WebACL</code> (see <a>GetWebACL</a>), update a <code>WebACL</code> (see <a>UpdateWebACL</a>), and delete a <code>WebACL</code> from AWS WAF (see <a>DeleteWebACL</a>).</p> <p> <code>WebACLId</code> is returned by <a>CreateWebACL</a> and by <a>ListWebACLs</a>.</p>
  final pulumi.Input<String>? webACLId;

  /// Creates a new [AwsWafWebACLSummaryProperties].
  /// [name] <p>A friendly name or description of the <a>WebACL</a>. You can't change the name of a <code>WebACL</code> after you create it.</p>
  /// [webACLId] <p>A unique identifier for a <code>WebACL</code>. You use <code>WebACLId</code> to get information about a <code>WebACL</code> (see <a>GetWebACL</a>), update a <code>WebACL</code> (see <a>UpdateWebACL</a>), and delete a <code>WebACL</code> from AWS WAF (see <a>DeleteWebACL</a>).</p> <p> <code>WebACLId</code> is returned by <a>CreateWebACL</a> and by <a>ListWebACLs</a>.</p>
  AwsWafWebACLSummaryProperties({
    this.name,
    this.webACLId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'webACLId': ?webACLId,
    };
  }

  factory AwsWafWebACLSummaryProperties.fromMap(Map<String, dynamic> map) {
    return AwsWafWebACLSummaryProperties(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      webACLId: map['webACLId'] == null ? null : (map['webACLId']! as String).input(),
    );
  }
}

