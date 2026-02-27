import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_policy_document_args.dart';
import 'get_policy_document_result.dart';

/// Generates an IAM policy document in JSON format for use with resources that expect policy documents such as `aws.iam.Policy`.
///
/// Using this data source to generate policy documents is *optional*. It is also valid to use literal JSON strings in your configuration or to use the `file` interpolation function to read a raw JSON policy document from a file.
///
/// ## Example Usage
///
/// ### Basic Example
///
///
///
/// ### Example Multiple Condition Keys and Values
///
/// You can specify a [condition with multiple keys and values](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_multi-value-conditions.html) by supplying multiple `condition` blocks with the same `test` value, but differing `variable` and `values` values.
///
///
///
/// `data.aws_iam_policy_document.example_multiple_condition_keys_and_values.json` will evaluate to:
///
/// ```json
/// {
/// "Version": "2012-10-17",
/// "Statement": [
/// {
/// "Sid": "",
/// "Effect": "Allow",
/// "Action": [
/// "kms:GenerateDataKey",
/// "kms:Decrypt"
/// ],
/// "Resource": "*",
/// "Condition": {
/// "ForAnyValue:StringEquals": {
/// "kms:EncryptionContext:aws:pi:service": "rds",
/// "kms:EncryptionContext:aws:rds:db-id": [
/// "db-AAAAABBBBBCCCCCDDDDDEEEEE",
/// "db-EEEEEDDDDDCCCCCBBBBBAAAAA"
/// ],
/// "kms:EncryptionContext:service": "pi"
/// }
/// }
/// }
/// ]
/// }
/// ```
///
/// ### Example Assume-Role Policy with Multiple Principals
///
/// You can specify multiple principal blocks with different types. You can also use this data source to generate an assume-role policy.
///
///
///
/// ### Example Using A Source Document
///
///
///
/// `data.aws_iam_policy_document.source_document_example.json` will evaluate to:
///
/// ```json
/// {
/// "Version": "2012-10-17",
/// "Statement": [
/// {
/// "Sid": "",
/// "Effect": "Allow",
/// "Action": "ec2:*",
/// "Resource": "*"
/// },
/// {
/// "Sid": "SidToOverride",
/// "Effect": "Allow",
/// "Action": "s3:*",
/// "Resource": [
/// "arn:aws:s3:::somebucket/*",
/// "arn:aws:s3:::somebucket"
/// ]
/// }
/// ]
/// }
/// ```
///
/// ### Example Using An Override Document
///
///
///
/// `data.aws_iam_policy_document.override_policy_document_example.json` will evaluate to:
///
/// ```json
/// {
/// "Version": "2012-10-17",
/// "Statement": [
/// {
/// "Sid": "",
/// "Effect": "Allow",
/// "Action": "ec2:*",
/// "Resource": "*"
/// },
/// {
/// "Sid": "SidToOverride",
/// "Effect": "Allow",
/// "Action": "s3:*",
/// "Resource": "*"
/// }
/// ]
/// }
/// ```
///
/// ### Example with Both Source and Override Documents
///
/// You can also combine `source_policy_documents` and `override_policy_documents` in the same document.
///
///
///
/// `data.aws_iam_policy_document.politik.json` will evaluate to:
///
/// ```json
/// {
/// "Version": "2012-10-17",
/// "Statement": [
/// {
/// "Sid": "OverridePlaceholder",
/// "Effect": "Allow",
/// "Action": "s3:GetObject",
/// "Resource": "*"
/// }
/// ]
/// }
/// ```
///
/// ### Example of Merging Source Documents
///
/// Multiple documents can be combined using the `source_policy_documents` or `override_policy_documents` attributes. `source_policy_documents` requires that all documents have unique Sids, while `override_policy_documents` will iteratively override matching Sids.
///
///
///
/// `data.aws_iam_policy_document.combined.json` will evaluate to:
///
/// ```json
/// {
/// "Version": "2012-10-17",
/// "Statement": [
/// {
/// "Sid": "",
/// "Effect": "Allow",
/// "Action": "ec2:*",
/// "Resource": "*"
/// },
/// {
/// "Sid": "UniqueSidOne",
/// "Effect": "Allow",
/// "Action": "s3:*",
/// "Resource": "*"
/// },
/// {
/// "Sid": "UniqueSidTwo",
/// "Effect": "Allow",
/// "Action": "iam:*",
/// "Resource": "*"
/// },
/// {
/// "Sid": "",
/// "Effect": "Allow",
/// "Action": "lambda:*",
/// "Resource": "*"
/// }
/// ]
/// }
/// ```
///
/// ### Example of Merging Override Documents
///
///
///
/// `data.aws_iam_policy_document.combined.json` will evaluate to:
///
/// ```json
/// {
/// "Version": "2012-10-17",
/// "Statement": [
/// {
/// "Sid": "OverridePlaceholderTwo",
/// "Effect": "Allow",
/// "Action": "iam:*",
/// "Resource": "*"
/// },
/// {
/// "Sid": "OverridePlaceholderOne",
/// "Effect": "Deny",
/// "Action": "logs:*",
/// "Resource": "*"
/// },
/// {
/// "Sid": "",
/// "Effect": "Allow",
/// "Action": "ec2:*",
/// "Resource": "*"
/// },
/// ]
/// }
/// ```
Future<GetPolicyDocumentResult> getPolicyDocument(
  GetPolicyDocumentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:iam/getPolicyDocument:getPolicyDocument',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPolicyDocumentResult.fromMap(result);
}
