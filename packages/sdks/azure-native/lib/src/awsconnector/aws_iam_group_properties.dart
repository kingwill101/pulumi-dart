// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy.dart';

/// Definition of awsIamGroup
class AwsIamGroupProperties {
  /// Property arn
  final pulumi.Input<String>? arn;

  /// The name of the group to create. Do not include the path in this value. The group name must be unique within the account. Group names are not distinguished by case. For example, you cannot create groups named both 'ADMINS' and 'admins'. If you don't specify a name, CFN generates a unique physical ID and uses that ID for the group name.  If you specify a name, you cannot perform updates that require replacement of this resource. You can perform updates that require no or some interruption. If you must replace the resource, specify a new name.  If you specify a name, you must specify the ``CAPABILITY_NAMED_IAM`` value to acknowledge your template's capabilities. For more information, see [Acknowledging Resources in Templates](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#using-iam-capabilities).  Naming an IAM resource can cause an unrecoverable error if you reuse the same template in multiple Regions. To prevent this, we recommend using ``Fn::Join`` and ``AWS::Region`` to create a Region-specific name, as in the following example: ``{'Fn::Join': ['', [{'Ref': 'AWS::Region'}, {'Ref': 'MyResourceName'}]]}``.
  final pulumi.Input<String>? groupName;

  /// The Amazon Resource Name (ARN) of the IAM policy you want to attach. For more information about ARNs, see [Amazon Resource Names (ARNs)](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) in the *General Reference*.
  final pulumi.Input<List<String>>? managedPolicyArns;

  /// The path to the group. For more information about paths, see [IAM identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) in the *IAM User Guide*. This parameter is optional. If it is not included, it defaults to a slash (/). This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (``\u0021``) through the DEL character (``\u007F``), including most punctuation characters, digits, and upper and lowercased letters.
  final pulumi.Input<String>? path;

  /// Adds or updates an inline policy document that is embedded in the specified IAM group. To view AWS::IAM::Group snippets, see [Declaring an Group Resource](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/quickref-iam.html#scenario-iam-group).  The name of each inline policy for a role, user, or group must be unique. If you don't choose unique names, updates to the IAM identity will fail.   For information about limits on the number of inline policies that you can embed in a group, see [Limitations on Entities](https://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html) in the *User Guide*.
  final pulumi.Input<List<Policy>>? policies;

  /// Creates a new [AwsIamGroupProperties].
  /// [arn] Property arn
  /// [groupName] The name of the group to create. Do not include the path in this value. The group name must be unique within the account. Group names are not distinguished by case. For example, you cannot create groups named both 'ADMINS' and 'admins'. If you don't specify a name, CFN generates a unique physical ID and uses that ID for the group name.  If you specify a name, you cannot perform updates that require replacement of this resource. You can perform updates that require no or some interruption. If you must replace the resource, specify a new name.  If you specify a name, you must specify the ``CAPABILITY_NAMED_IAM`` value to acknowledge your template's capabilities. For more information, see [Acknowledging Resources in Templates](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#using-iam-capabilities).  Naming an IAM resource can cause an unrecoverable error if you reuse the same template in multiple Regions. To prevent this, we recommend using ``Fn::Join`` and ``AWS::Region`` to create a Region-specific name, as in the following example: ``{'Fn::Join': ['', [{'Ref': 'AWS::Region'}, {'Ref': 'MyResourceName'}]]}``.
  /// [managedPolicyArns] The Amazon Resource Name (ARN) of the IAM policy you want to attach. For more information about ARNs, see [Amazon Resource Names (ARNs)](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) in the *General Reference*.
  /// [path] The path to the group. For more information about paths, see [IAM identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) in the *IAM User Guide*. This parameter is optional. If it is not included, it defaults to a slash (/). This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (``\u0021``) through the DEL character (``\u007F``), including most punctuation characters, digits, and upper and lowercased letters.
  /// [policies] Adds or updates an inline policy document that is embedded in the specified IAM group. To view AWS::IAM::Group snippets, see [Declaring an Group Resource](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/quickref-iam.html#scenario-iam-group).  The name of each inline policy for a role, user, or group must be unique. If you don't choose unique names, updates to the IAM identity will fail.   For information about limits on the number of inline policies that you can embed in a group, see [Limitations on Entities](https://docs.aws.amazon.com/IAM/latest/UserGuide/LimitationsOnEntities.html) in the *User Guide*.
  AwsIamGroupProperties({
    this.arn,
    this.groupName,
    this.managedPolicyArns,
    this.path,
    this.policies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'groupName': ?groupName,
      'managedPolicyArns': ?managedPolicyArns,
      'path': ?path,
      'policies':
          ?pulumi.Input.mapOptionalInputValue<
            List<Policy>,
            List<Map<String, dynamic>>
          >(
            policies,
            (value) => pulumi.Input.encodeList<Policy, Map<String, dynamic>>(
              value,
              (value) => value.toMap(),
            ),
          ),
    };
  }

  factory AwsIamGroupProperties.fromMap(Map<String, dynamic> map) {
    return AwsIamGroupProperties(
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      groupName: (() {
        final guardedValue = map['groupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      managedPolicyArns: (() {
        final guardedValue = map['managedPolicyArns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      path: (() {
        final guardedValue = map['path'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      policies: (() {
        final guardedValue = map['policies'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<Policy>(
            guardedValue,
            (value) => Policy.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
    );
  }
}
