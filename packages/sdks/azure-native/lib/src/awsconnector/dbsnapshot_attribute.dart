// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of DBSnapshotAttribute
class DBSnapshotAttribute {
  /// &lt;p&gt;The name of the manual DB snapshot attribute.&lt;/p&gt; &lt;p&gt;The attribute named &lt;code&gt;restore&lt;/code&gt; refers to the list of Amazon Web Services accounts that have permission to copy or restore the manual DB cluster snapshot. For more information, see the &lt;code&gt;ModifyDBSnapshotAttribute&lt;/code&gt; API action.&lt;/p&gt;
  final pulumi.Input<String>? attributeName;
  /// &lt;p&gt;The value or values for the manual DB snapshot attribute.&lt;/p&gt; &lt;p&gt;If the &lt;code&gt;AttributeName&lt;/code&gt; field is set to &lt;code&gt;restore&lt;/code&gt;, then this element returns a list of IDs of the Amazon Web Services accounts that are authorized to copy or restore the manual DB snapshot. If a value of &lt;code&gt;all&lt;/code&gt; is in the list, then the manual DB snapshot is public and available for any Amazon Web Services account to copy or restore.&lt;/p&gt;
  final pulumi.Input<List<String>>? attributeValues;

  /// Creates a new [DBSnapshotAttribute].
  /// [attributeName] &lt;p&gt;The name of the manual DB snapshot attribute.&lt;/p&gt; &lt;p&gt;The attribute named &lt;code&gt;restore&lt;/code&gt; refers to the list of Amazon Web Services accounts that have permission to copy or restore the manual DB cluster snapshot. For more information, see the &lt;code&gt;ModifyDBSnapshotAttribute&lt;/code&gt; API action.&lt;/p&gt;
  /// [attributeValues] &lt;p&gt;The value or values for the manual DB snapshot attribute.&lt;/p&gt; &lt;p&gt;If the &lt;code&gt;AttributeName&lt;/code&gt; field is set to &lt;code&gt;restore&lt;/code&gt;, then this element returns a list of IDs of the Amazon Web Services accounts that are authorized to copy or restore the manual DB snapshot. If a value of &lt;code&gt;all&lt;/code&gt; is in the list, then the manual DB snapshot is public and available for any Amazon Web Services account to copy or restore.&lt;/p&gt;
  const DBSnapshotAttribute({
    this.attributeName,
    this.attributeValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributeName': ?attributeName,
      'attributeValues': ?attributeValues,
    };
  }

  factory DBSnapshotAttribute.fromMap(Map<String, dynamic> map) {
    return DBSnapshotAttribute(
      attributeName: (() { final guardedValue = map['attributeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      attributeValues: (() { final guardedValue = map['attributeValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

