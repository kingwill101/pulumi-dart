// ignore_for_file: unused_element, unnecessary_cast

import 'market_place_offer_details_response.dart';

/// Data Manager for Agriculture solution.
class DataManagerForAgricultureSolutionResponse {
  /// Entra application Id used to access azure data manager for agriculture instance.
  final String accessAzureDataManagerForAgricultureApplicationId;
  /// Entra application name used to access azure data manager for agriculture instance.
  final String accessAzureDataManagerForAgricultureApplicationName;
  /// Data access scopes.
  final List<String> dataAccessScopes;
  /// Whether solution inference will validate input.
  final bool isValidateInput;
  /// Marketplace offer details.
  final MarketPlaceOfferDetailsResponse marketPlaceOfferDetails;
  /// Partner Id.
  final String partnerId;
  /// Partner tenant Id.
  final String partnerTenantId;
  /// Saas application Id.
  final String saasApplicationId;
  /// Solution Id.
  final String solutionId;

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
  DataManagerForAgricultureSolutionResponse({
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
      'marketPlaceOfferDetails': marketPlaceOfferDetails.toMap(),
      'partnerId': partnerId,
      'partnerTenantId': partnerTenantId,
      'saasApplicationId': saasApplicationId,
      'solutionId': solutionId,
    };
  }

  factory DataManagerForAgricultureSolutionResponse.fromMap(Map<String, dynamic> map) {
    return DataManagerForAgricultureSolutionResponse(
      accessAzureDataManagerForAgricultureApplicationId: map['accessAzureDataManagerForAgricultureApplicationId'] as String,
      accessAzureDataManagerForAgricultureApplicationName: map['accessAzureDataManagerForAgricultureApplicationName'] as String,
      dataAccessScopes: (map['dataAccessScopes'] as List).cast<String>(),
      isValidateInput: map['isValidateInput'] as bool,
      marketPlaceOfferDetails: MarketPlaceOfferDetailsResponse.fromMap((map['marketPlaceOfferDetails'] as Map).cast<String, dynamic>()),
      partnerId: map['partnerId'] as String,
      partnerTenantId: map['partnerTenantId'] as String,
      saasApplicationId: map['saasApplicationId'] as String,
      solutionId: map['solutionId'] as String,
    );
  }
}

