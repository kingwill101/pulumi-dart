// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_detail_response.dart';
import 'forward_shipping_details_response.dart';
import 'preferences_response.dart';
import 'product_details_response.dart';
import 'resource_provider_details_response.dart';
import 'reverse_shipping_details_response.dart';
import 'site_details_response.dart';
import 'stage_details_response.dart';

/// Order item details.
class OrderItemDetailsResponse {
  /// Cancellation reason.
  final String cancellationReason;
  /// Describes whether the order item is cancellable or not.
  final String cancellationStatus;
  /// Current Order item Status.
  final StageDetailsResponse currentStage;
  /// Describes whether the order item is deletable or not.
  final String deletionStatus;
  /// Top level error for the job.
  final ErrorDetailResponse error;
  /// Forward Package Shipping details.
  final ForwardShippingDetailsResponse forwardShippingDetails;
  /// List of parent RP details supported for configuration.
  final List<ResourceProviderDetailsResponse> managementRpDetailsList;
  /// Additional notification email list.
  final List<String>? notificationEmailList;
  /// Defines the mode of the Order item.
  final String? orderItemMode;
  /// Order item status history.
  final List<StageDetailsResponse> orderItemStageHistory;
  /// Order item type.
  final String orderItemType;
  /// Customer notification Preferences.
  final PreferencesResponse? preferences;
  /// Represents product details.
  final ProductDetailsResponse productDetails;
  /// Return reason.
  final String returnReason;
  /// Describes whether the order item is returnable or not.
  final String returnStatus;
  /// Reverse Package Shipping details.
  final ReverseShippingDetailsResponse reverseShippingDetails;
  /// Site Related Details.
  final SiteDetailsResponse? siteDetails;

  /// Creates a new [OrderItemDetailsResponse].
  /// [cancellationReason] Cancellation reason.
  /// [cancellationStatus] Describes whether the order item is cancellable or not.
  /// [currentStage] Current Order item Status.
  /// [deletionStatus] Describes whether the order item is deletable or not.
  /// [error] Top level error for the job.
  /// [forwardShippingDetails] Forward Package Shipping details.
  /// [managementRpDetailsList] List of parent RP details supported for configuration.
  /// [notificationEmailList] Additional notification email list.
  /// [orderItemMode] Defines the mode of the Order item.
  /// [orderItemStageHistory] Order item status history.
  /// [orderItemType] Order item type.
  /// [preferences] Customer notification Preferences.
  /// [productDetails] Represents product details.
  /// [returnReason] Return reason.
  /// [returnStatus] Describes whether the order item is returnable or not.
  /// [reverseShippingDetails] Reverse Package Shipping details.
  /// [siteDetails] Site Related Details.
  OrderItemDetailsResponse({
    required this.cancellationReason,
    required this.cancellationStatus,
    required this.currentStage,
    required this.deletionStatus,
    required this.error,
    required this.forwardShippingDetails,
    required this.managementRpDetailsList,
    this.notificationEmailList,
    this.orderItemMode,
    required this.orderItemStageHistory,
    required this.orderItemType,
    this.preferences,
    required this.productDetails,
    required this.returnReason,
    required this.returnStatus,
    required this.reverseShippingDetails,
    this.siteDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cancellationReason': cancellationReason,
      'cancellationStatus': cancellationStatus,
      'currentStage': currentStage.toMap(),
      'deletionStatus': deletionStatus,
      'error': error.toMap(),
      'forwardShippingDetails': forwardShippingDetails.toMap(),
      'managementRpDetailsList': pulumi.Input.encodeList<ResourceProviderDetailsResponse, Map<String, dynamic>>(managementRpDetailsList, (value) => value.toMap()),
      'notificationEmailList': ?notificationEmailList,
      'orderItemMode': ?orderItemMode,
      'orderItemStageHistory': pulumi.Input.encodeList<StageDetailsResponse, Map<String, dynamic>>(orderItemStageHistory, (value) => value.toMap()),
      'orderItemType': orderItemType,
      'preferences': ?preferences == null ? null : preferences!.toMap(),
      'productDetails': productDetails.toMap(),
      'returnReason': returnReason,
      'returnStatus': returnStatus,
      'reverseShippingDetails': reverseShippingDetails.toMap(),
      'siteDetails': ?siteDetails == null ? null : siteDetails!.toMap(),
    };
  }

  factory OrderItemDetailsResponse.fromMap(Map<String, dynamic> map) {
    return OrderItemDetailsResponse(
      cancellationReason: map['cancellationReason'] as String,
      cancellationStatus: map['cancellationStatus'] as String,
      currentStage: StageDetailsResponse.fromMap((map['currentStage'] as Map).cast<String, dynamic>()),
      deletionStatus: map['deletionStatus'] as String,
      error: ErrorDetailResponse.fromMap((map['error'] as Map).cast<String, dynamic>()),
      forwardShippingDetails: ForwardShippingDetailsResponse.fromMap((map['forwardShippingDetails'] as Map).cast<String, dynamic>()),
      managementRpDetailsList: pulumi.Input.decodeList<ResourceProviderDetailsResponse>(map['managementRpDetailsList'], (value) => ResourceProviderDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      notificationEmailList: map['notificationEmailList'] == null ? null : (map['notificationEmailList'] as List).cast<String>(),
      orderItemMode: map['orderItemMode'] == null ? null : map['orderItemMode'] as String,
      orderItemStageHistory: pulumi.Input.decodeList<StageDetailsResponse>(map['orderItemStageHistory'], (value) => StageDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      orderItemType: map['orderItemType'] as String,
      preferences: map['preferences'] == null ? null : PreferencesResponse.fromMap((map['preferences'] as Map).cast<String, dynamic>()),
      productDetails: ProductDetailsResponse.fromMap((map['productDetails'] as Map).cast<String, dynamic>()),
      returnReason: map['returnReason'] as String,
      returnStatus: map['returnStatus'] as String,
      reverseShippingDetails: ReverseShippingDetailsResponse.fromMap((map['reverseShippingDetails'] as Map).cast<String, dynamic>()),
      siteDetails: map['siteDetails'] == null ? null : SiteDetailsResponse.fromMap((map['siteDetails'] as Map).cast<String, dynamic>()),
    );
  }
}

