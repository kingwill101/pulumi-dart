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
  final pulumi.Input<String> cancellationReason;
  /// Describes whether the order item is cancellable or not.
  final pulumi.Input<String> cancellationStatus;
  /// Current Order item Status.
  final pulumi.Input<StageDetailsResponse> currentStage;
  /// Describes whether the order item is deletable or not.
  final pulumi.Input<String> deletionStatus;
  /// Top level error for the job.
  final pulumi.Input<ErrorDetailResponse> error;
  /// Forward Package Shipping details.
  final pulumi.Input<ForwardShippingDetailsResponse> forwardShippingDetails;
  /// List of parent RP details supported for configuration.
  final pulumi.Input<List<ResourceProviderDetailsResponse>> managementRpDetailsList;
  /// Additional notification email list.
  final pulumi.Input<List<String>>? notificationEmailList;
  /// Defines the mode of the Order item.
  final pulumi.Input<String>? orderItemMode;
  /// Order item status history.
  final pulumi.Input<List<StageDetailsResponse>> orderItemStageHistory;
  /// Order item type.
  final pulumi.Input<String> orderItemType;
  /// Customer notification Preferences.
  final pulumi.Input<PreferencesResponse>? preferences;
  /// Represents product details.
  final pulumi.Input<ProductDetailsResponse> productDetails;
  /// Return reason.
  final pulumi.Input<String> returnReason;
  /// Describes whether the order item is returnable or not.
  final pulumi.Input<String> returnStatus;
  /// Reverse Package Shipping details.
  final pulumi.Input<ReverseShippingDetailsResponse> reverseShippingDetails;
  /// Site Related Details.
  final pulumi.Input<SiteDetailsResponse>? siteDetails;

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
      'currentStage': pulumi.Input.mapInputValue<StageDetailsResponse, Map<String, dynamic>>(currentStage, (value) => value.toMap()),
      'deletionStatus': deletionStatus,
      'error': pulumi.Input.mapInputValue<ErrorDetailResponse, Map<String, dynamic>>(error, (value) => value.toMap()),
      'forwardShippingDetails': pulumi.Input.mapInputValue<ForwardShippingDetailsResponse, Map<String, dynamic>>(forwardShippingDetails, (value) => value.toMap()),
      'managementRpDetailsList': pulumi.Input.mapInputValue<List<ResourceProviderDetailsResponse>, List<Map<String, dynamic>>>(managementRpDetailsList, (value) => pulumi.Input.encodeList<ResourceProviderDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'notificationEmailList': ?notificationEmailList,
      'orderItemMode': ?orderItemMode,
      'orderItemStageHistory': pulumi.Input.mapInputValue<List<StageDetailsResponse>, List<Map<String, dynamic>>>(orderItemStageHistory, (value) => pulumi.Input.encodeList<StageDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'orderItemType': orderItemType,
      'preferences': ?pulumi.Input.mapOptionalInputValue<PreferencesResponse, Map<String, dynamic>>(preferences, (value) => value.toMap()),
      'productDetails': pulumi.Input.mapInputValue<ProductDetailsResponse, Map<String, dynamic>>(productDetails, (value) => value.toMap()),
      'returnReason': returnReason,
      'returnStatus': returnStatus,
      'reverseShippingDetails': pulumi.Input.mapInputValue<ReverseShippingDetailsResponse, Map<String, dynamic>>(reverseShippingDetails, (value) => value.toMap()),
      'siteDetails': ?pulumi.Input.mapOptionalInputValue<SiteDetailsResponse, Map<String, dynamic>>(siteDetails, (value) => value.toMap()),
    };
  }

  factory OrderItemDetailsResponse.fromMap(Map<String, dynamic> map) {
    return OrderItemDetailsResponse(
      cancellationReason: (map['cancellationReason'] as String).input(),
      cancellationStatus: (map['cancellationStatus'] as String).input(),
      currentStage: (StageDetailsResponse.fromMap((map['currentStage'] as Map).cast<String, dynamic>())).input(),
      deletionStatus: (map['deletionStatus'] as String).input(),
      error: (ErrorDetailResponse.fromMap((map['error'] as Map).cast<String, dynamic>())).input(),
      forwardShippingDetails: (ForwardShippingDetailsResponse.fromMap((map['forwardShippingDetails'] as Map).cast<String, dynamic>())).input(),
      managementRpDetailsList: (pulumi.Input.decodeList<ResourceProviderDetailsResponse>(map['managementRpDetailsList'], (value) => ResourceProviderDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      notificationEmailList: map['notificationEmailList'] == null ? null : ((map['notificationEmailList']! as List).cast<String>()).input(),
      orderItemMode: map['orderItemMode'] == null ? null : (map['orderItemMode']! as String).input(),
      orderItemStageHistory: (pulumi.Input.decodeList<StageDetailsResponse>(map['orderItemStageHistory'], (value) => StageDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      orderItemType: (map['orderItemType'] as String).input(),
      preferences: map['preferences'] == null ? null : (PreferencesResponse.fromMap((map['preferences']! as Map).cast<String, dynamic>())).input(),
      productDetails: (ProductDetailsResponse.fromMap((map['productDetails'] as Map).cast<String, dynamic>())).input(),
      returnReason: (map['returnReason'] as String).input(),
      returnStatus: (map['returnStatus'] as String).input(),
      reverseShippingDetails: (ReverseShippingDetailsResponse.fromMap((map['reverseShippingDetails'] as Map).cast<String, dynamic>())).input(),
      siteDetails: map['siteDetails'] == null ? null : (SiteDetailsResponse.fromMap((map['siteDetails']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

