// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bool_equals_advanced_filter_response.dart';

/// Filter for the Event Subscription.
class EventSubscriptionFilterResponse {
  /// An array of advanced filters that are used for filtering event subscriptions.
  final pulumi.Input<List<BoolEqualsAdvancedFilterResponse>>? advancedFilters;
  /// Allows advanced filters to be evaluated against an array of values instead of expecting a singular value.
  final pulumi.Input<bool>? enableAdvancedFilteringOnArrays;
  /// A list of applicable event types that need to be part of the event subscription. If it is desired to subscribe to all default event types, set the IncludedEventTypes to null.
  final pulumi.Input<List<String>>? includedEventTypes;
  /// Specifies if the SubjectBeginsWith and SubjectEndsWith properties of the filter
  /// should be compared in a case sensitive manner.
  final pulumi.Input<bool>? isSubjectCaseSensitive;
  /// An optional string to filter events for an event subscription based on a resource path prefix.
  /// The format of this depends on the publisher of the events.
  /// Wildcard characters are not supported in this path.
  final pulumi.Input<String>? subjectBeginsWith;
  /// An optional string to filter events for an event subscription based on a resource path suffix.
  /// Wildcard characters are not supported in this path.
  final pulumi.Input<String>? subjectEndsWith;

  /// Creates a new [EventSubscriptionFilterResponse].
  /// [advancedFilters] An array of advanced filters that are used for filtering event subscriptions.
  /// [enableAdvancedFilteringOnArrays] Allows advanced filters to be evaluated against an array of values instead of expecting a singular value.
  /// [includedEventTypes] A list of applicable event types that need to be part of the event subscription. If it is desired to subscribe to all default event types, set the IncludedEventTypes to null.
  /// [isSubjectCaseSensitive] Specifies if the SubjectBeginsWith and SubjectEndsWith properties of the filter
  /// [subjectBeginsWith] An optional string to filter events for an event subscription based on a resource path prefix.
  /// [subjectEndsWith] An optional string to filter events for an event subscription based on a resource path suffix.
  EventSubscriptionFilterResponse({
    this.advancedFilters,
    this.enableAdvancedFilteringOnArrays,
    this.includedEventTypes,
    this.isSubjectCaseSensitive,
    this.subjectBeginsWith,
    this.subjectEndsWith,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedFilters': ?pulumi.Input.mapOptionalInputValue<List<BoolEqualsAdvancedFilterResponse>, List<Map<String, dynamic>>>(advancedFilters, (value) => pulumi.Input.encodeList<BoolEqualsAdvancedFilterResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enableAdvancedFilteringOnArrays': ?enableAdvancedFilteringOnArrays,
      'includedEventTypes': ?includedEventTypes,
      'isSubjectCaseSensitive': ?isSubjectCaseSensitive,
      'subjectBeginsWith': ?subjectBeginsWith,
      'subjectEndsWith': ?subjectEndsWith,
    };
  }

  factory EventSubscriptionFilterResponse.fromMap(Map<String, dynamic> map) {
    return EventSubscriptionFilterResponse(
      advancedFilters: map['advancedFilters'] == null ? null : (pulumi.Input.decodeList<BoolEqualsAdvancedFilterResponse>(map['advancedFilters']!, (value) => BoolEqualsAdvancedFilterResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      enableAdvancedFilteringOnArrays: map['enableAdvancedFilteringOnArrays'] == null ? null : (map['enableAdvancedFilteringOnArrays']! as bool).input(),
      includedEventTypes: map['includedEventTypes'] == null ? null : ((map['includedEventTypes']! as List).cast<String>()).input(),
      isSubjectCaseSensitive: map['isSubjectCaseSensitive'] == null ? null : (map['isSubjectCaseSensitive']! as bool).input(),
      subjectBeginsWith: map['subjectBeginsWith'] == null ? null : (map['subjectBeginsWith']! as String).input(),
      subjectEndsWith: map['subjectEndsWith'] == null ? null : (map['subjectEndsWith']! as String).input(),
    );
  }
}

