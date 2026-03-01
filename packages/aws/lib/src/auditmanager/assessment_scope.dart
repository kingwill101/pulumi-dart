// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assessment_scope_aws_account.dart';
import 'assessment_scope_aws_service.dart';

class AssessmentScope {
  /// Amazon Web Services accounts that are in scope for the assessment. See `aws_accounts` below.
  final List<AssessmentScopeAwsAccount>? awsAccounts;

  /// Amazon Web Services services that are included in the scope of the assessment. See `aws_services` below.
  final List<AssessmentScopeAwsService>? awsServices;

  /// Creates a new [AssessmentScope].
  /// [awsAccounts] Amazon Web Services accounts that are in scope for the assessment. See `aws_accounts` below.
  /// [awsServices] Amazon Web Services services that are included in the scope of the assessment. See `aws_services` below.
  AssessmentScope({this.awsAccounts, this.awsServices});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsAccounts': ?awsAccounts == null
          ? null
          : pulumi.Input.encodeList<
              AssessmentScopeAwsAccount,
              Map<String, dynamic>
            >(awsAccounts!, (value) => value.toMap()),
      'awsServices': ?awsServices == null
          ? null
          : pulumi.Input.encodeList<
              AssessmentScopeAwsService,
              Map<String, dynamic>
            >(awsServices!, (value) => value.toMap()),
    };
  }

  factory AssessmentScope.fromMap(Map<String, dynamic> map) {
    return AssessmentScope(
      awsAccounts: map['awsAccounts'] == null
          ? null
          : pulumi.Input.decodeList<AssessmentScopeAwsAccount>(
              map['awsAccounts'],
              (value) => AssessmentScopeAwsAccount.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      awsServices: map['awsServices'] == null
          ? null
          : pulumi.Input.decodeList<AssessmentScopeAwsService>(
              map['awsServices'],
              (value) => AssessmentScopeAwsService.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
