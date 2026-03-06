// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'market_place_offer_details_response.dart';

/// Data Manager for Agriculture solution.
class DataManagerForAgricultureSolutionResponse {
  /// Entra application Id used to access azure data manager for agriculture instance.
  final pulumi.Input<String> accessAzureDataManagerForAgricultureApplicationId;
  /// Entra application name used to access azure data manager for agriculture instance.
  final pulumi.Input<String> accessAzureDataManagerForAgricultureApplicationName;
  /// Data access scopes.
  final pulumi.Input<List<String>> dataAccessScopes;
  /// Whether solution inference will validate input.
  final pulumi.Input<bool> isValidateInput;
  /// Marketplace offer details.
  final pulumi.Input<MarketPlaceOfferDetailsResponse> marketPlaceOfferDetails;
  /// Partner Id.
  final pulumi.Input<String> partnerId;
  /// Partner tenant Id.
  final pulumi.Input<String> partnerTenantId;
  /// Saas application Id.
  final pulumi.Input<String> saasApplicationId;
  /// Solution Id.
  final pulumi.Input<String> solutionId;

  /// Creates a new [DataManagerForAgricultureSolutionResponse].
  /// [accessAzureDataManagerForAgricultureApplicationId] Entra application Id used to access azure data manager for agriculture instance.
  /// [accessAzureDataManagerForAgricultureApplicationName] Entra application name used to access azure data manager for agriculture instance.
  /// [dataAccessScopes] Data access scopes.
  /// [isValidateInput] Whether solution inference will validate input.
  /// [marketPlaceOfferDetails] Marketplace offer details.
  /// [partnerId] Partner Id.
  /// [partnerTenantId] Partner tenant Id.
  /// [saasApplicationId] Saas application Id.
  /// [solutionId] Solution Id.
  const DataManagerForAgricultureSolutionResponse({
    required this.accessAzureDataManagerForAgricultureApplicationId,
    required this.accessAzureDataManagerForAgricultureApplicationName,
    required this.dataAccessScopes,
    required this.isValidateInput,
    required this.marketPlaceOfferDetails,
    required this.partnerId,
    required this.partnerTenantId,
    required this.saasApplicationId,
    required this.solutionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessAzureDataManagerForAgricultureApplicationId': accessAzureDataManagerForAgricultureApplicationId,
      'accessAzureDataManagerForAgricultureApplicationName': accessAzureDataManagerForAgricultureApplicationName,
      'dataAccessScopes': dataAccessScopes,
      'isValidateInput': isValidateInput,
      'marketPlaceOfferDetails': pulumi.Input.mapInputValue<MarketPlaceOfferDetailsResponse, Map<String, dynamic>>(marketPlaceOfferDetails, (value) => value.toMap()),
      'partnerId': partnerId,
      'partnerTenantId': partnerTenantId,
      'saasApplicationId': saasApplicationId,
      'solutionId': solutionId,
    };
  }

  factory DataManagerForAgricultureSolutionResponse.fromMap(Map<String, dynamic> map) {
    return DataManagerForAgricultureSolutionResponse(
      accessAzureDataManagerForAgricultureApplicationId: pulumi.Input.fromValue(map['accessAzureDataManagerForAgricultureApplicationId'] as String),
      accessAzureDataManagerForAgricultureApplicationName: pulumi.Input.fromValue(map['accessAzureDataManagerForAgricultureApplicationName'] as String),
      dataAccessScopes: pulumi.Input.fromValue((map['dataAccessScopes'] as List).cast<String>()),
      isValidateInput: pulumi.Input.fromValue(map['isValidateInput'] as bool),
      marketPlaceOfferDetails: pulumi.Input.fromValue(MarketPlaceOfferDetailsResponse.fromMap((map['marketPlaceOfferDetails']! as Map).cast<String, dynamic>())),
      partnerId: pulumi.Input.fromValue(map['partnerId'] as String),
      partnerTenantId: pulumi.Input.fromValue(map['partnerTenantId'] as String),
      saasApplicationId: pulumi.Input.fromValue(map['saasApplicationId'] as String),
      solutionId: pulumi.Input.fromValue(map['solutionId'] as String),
    );
  }
}

