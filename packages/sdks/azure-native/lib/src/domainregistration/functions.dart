import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_domain_args.dart';
import 'get_domain_ownership_identifier_args.dart';
import 'get_domain_ownership_identifier_result.dart';
import 'get_domain_result.dart';
import 'list_domain_recommendations_args.dart';
import 'list_domain_recommendations_result.dart';
import 'list_top_level_domain_agreements_args.dart';
import 'list_top_level_domain_agreements_result.dart';

/// Description for Get a domain.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native domainregistration [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_domainregistration_get_domain_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDomainResult> getDomain(
  GetDomainArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:domainregistration:getDomain',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDomainResult.fromMap(result);
}

/// Description for Get ownership identifier for domain
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native domainregistration [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_domainregistration_get_domain_ownership_identifier_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDomainOwnershipIdentifierResult> getDomainOwnershipIdentifier(
  GetDomainOwnershipIdentifierArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:domainregistration:getDomainOwnershipIdentifier',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDomainOwnershipIdentifierResult.fromMap(result);
}

/// Description for Get domain name recommendations based on keywords.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native domainregistration [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_domainregistration_list_domain_recommendations_args_doc}
/// [options] Invoke options controlling this call.
Future<ListDomainRecommendationsResult> listDomainRecommendations(
  ListDomainRecommendationsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:domainregistration:listDomainRecommendations',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListDomainRecommendationsResult.fromMap(result);
}

/// Description for Gets all legal agreements that user needs to accept before purchasing a domain.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native domainregistration [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_domainregistration_list_top_level_domain_agreements_args_doc}
/// [options] Invoke options controlling this call.
Future<ListTopLevelDomainAgreementsResult> listTopLevelDomainAgreements(
  ListTopLevelDomainAgreementsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:domainregistration:listTopLevelDomainAgreements',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListTopLevelDomainAgreementsResult.fromMap(result);
}
