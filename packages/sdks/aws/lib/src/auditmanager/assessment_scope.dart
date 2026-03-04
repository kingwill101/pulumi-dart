// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assessment_scope_aws_account.dart';
import 'assessment_scope_aws_service.dart';

class AssessmentScope {
  /// Amazon Web Services accounts that are in scope for the assessment. See `aws_accounts` below.
  final pulumi.Input<List<AssessmentScopeAwsAccount>>? awsAccounts;

  /// Amazon Web Services services that are included in the scope of the assessment. See `aws_services` below.
  final pulumi.Input<List<AssessmentScopeAwsService>>? awsServices;

  /// Creates a new [AssessmentScope].
  /// [awsAccounts] Amazon Web Services accounts that are in scope for the assessment. See `aws_accounts` below.
  /// [awsServices] Amazon Web Services services that are included in the scope of the assessment. See `aws_services` below.
  AssessmentScope({this.awsAccounts, this.awsServices});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsAccounts':
          ?pulumi.Input.mapOptionalInputValue<
            List<AssessmentScopeAwsAccount>,
            List<Map<String, dynamic>>
          >(
            awsAccounts,
            (value) =>
                pulumi.Input.encodeList<
                  AssessmentScopeAwsAccount,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'awsServices':
          ?pulumi.Input.mapOptionalInputValue<
            List<AssessmentScopeAwsService>,
            List<Map<String, dynamic>>
          >(
            awsServices,
            (value) =>
                pulumi.Input.encodeList<
                  AssessmentScopeAwsService,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory AssessmentScope.fromMap(Map<String, dynamic> map) {
    return AssessmentScope(
      awsAccounts: (() {
        final guardedValue = map['awsAccounts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AssessmentScopeAwsAccount>(
            guardedValue,
            (value) => AssessmentScopeAwsAccount.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      awsServices: (() {
        final guardedValue = map['awsServices'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AssessmentScopeAwsService>(
            guardedValue,
            (value) => AssessmentScopeAwsService.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
