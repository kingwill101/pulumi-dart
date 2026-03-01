// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_subscription_advanced_filter_bool_equal.dart';
import 'event_subscription_advanced_filter_is_not_null.dart';
import 'event_subscription_advanced_filter_is_null_or_undefined.dart';
import 'event_subscription_advanced_filter_number_greater_than.dart';
import 'event_subscription_advanced_filter_number_greater_than_or_equal.dart';
import 'event_subscription_advanced_filter_number_in.dart';
import 'event_subscription_advanced_filter_number_in_range.dart';
import 'event_subscription_advanced_filter_number_less_than.dart';
import 'event_subscription_advanced_filter_number_less_than_or_equal.dart';
import 'event_subscription_advanced_filter_number_not_in.dart';
import 'event_subscription_advanced_filter_number_not_in_range.dart';
import 'event_subscription_advanced_filter_string_begins_with.dart';
import 'event_subscription_advanced_filter_string_contain.dart';
import 'event_subscription_advanced_filter_string_ends_with.dart';
import 'event_subscription_advanced_filter_string_in.dart';
import 'event_subscription_advanced_filter_string_not_begins_with.dart';
import 'event_subscription_advanced_filter_string_not_contain.dart';
import 'event_subscription_advanced_filter_string_not_ends_with.dart';
import 'event_subscription_advanced_filter_string_not_in.dart';

class EventSubscriptionAdvancedFilter {
  /// Compares a value of an event using a single boolean value.
  final List<EventSubscriptionAdvancedFilterBoolEqual>? boolEquals;
  /// Evaluates if a value of an event isn't NULL or undefined.
  final List<EventSubscriptionAdvancedFilterIsNotNull>? isNotNulls;
  /// Evaluates if a value of an event is NULL or undefined.
  ///
  /// Each nested block consists of a key and a value(s) element.
  final List<EventSubscriptionAdvancedFilterIsNullOrUndefined>? isNullOrUndefineds;
  /// Compares a value of an event using a single floating point number.
  final List<EventSubscriptionAdvancedFilterNumberGreaterThanOrEqual>? numberGreaterThanOrEquals;
  /// Compares a value of an event using a single floating point number.
  final List<EventSubscriptionAdvancedFilterNumberGreaterThan>? numberGreaterThans;
  /// Compares a value of an event using multiple floating point number ranges.
  final List<EventSubscriptionAdvancedFilterNumberInRange>? numberInRanges;
  /// Compares a value of an event using multiple floating point numbers.
  final List<EventSubscriptionAdvancedFilterNumberIn>? numberIns;
  /// Compares a value of an event using a single floating point number.
  final List<EventSubscriptionAdvancedFilterNumberLessThanOrEqual>? numberLessThanOrEquals;
  /// Compares a value of an event using a single floating point number.
  final List<EventSubscriptionAdvancedFilterNumberLessThan>? numberLessThans;
  /// Compares a value of an event using multiple floating point number ranges.
  final List<EventSubscriptionAdvancedFilterNumberNotInRange>? numberNotInRanges;
  /// Compares a value of an event using multiple floating point numbers.
  final List<EventSubscriptionAdvancedFilterNumberNotIn>? numberNotIns;
  /// Compares a value of an event using multiple string values.
  final List<EventSubscriptionAdvancedFilterStringBeginsWith>? stringBeginsWiths;
  /// Compares a value of an event using multiple string values.
  final List<EventSubscriptionAdvancedFilterStringContain>? stringContains;
  /// Compares a value of an event using multiple string values.
  final List<EventSubscriptionAdvancedFilterStringEndsWith>? stringEndsWiths;
  /// Compares a value of an event using multiple string values.
  final List<EventSubscriptionAdvancedFilterStringIn>? stringIns;
  /// Compares a value of an event using multiple string values.
  final List<EventSubscriptionAdvancedFilterStringNotBeginsWith>? stringNotBeginsWiths;
  /// Compares a value of an event using multiple string values.
  final List<EventSubscriptionAdvancedFilterStringNotContain>? stringNotContains;
  /// Compares a value of an event using multiple string values.
  final List<EventSubscriptionAdvancedFilterStringNotEndsWith>? stringNotEndsWiths;
  /// Compares a value of an event using multiple string values.
  final List<EventSubscriptionAdvancedFilterStringNotIn>? stringNotIns;

  /// Creates a new [EventSubscriptionAdvancedFilter].
  /// [boolEquals] Compares a value of an event using a single boolean value.
  /// [isNotNulls] Evaluates if a value of an event isn't NULL or undefined.
  /// [isNullOrUndefineds] Evaluates if a value of an event is NULL or undefined.
  /// [numberGreaterThanOrEquals] Compares a value of an event using a single floating point number.
  /// [numberGreaterThans] Compares a value of an event using a single floating point number.
  /// [numberInRanges] Compares a value of an event using multiple floating point number ranges.
  /// [numberIns] Compares a value of an event using multiple floating point numbers.
  /// [numberLessThanOrEquals] Compares a value of an event using a single floating point number.
  /// [numberLessThans] Compares a value of an event using a single floating point number.
  /// [numberNotInRanges] Compares a value of an event using multiple floating point number ranges.
  /// [numberNotIns] Compares a value of an event using multiple floating point numbers.
  /// [stringBeginsWiths] Compares a value of an event using multiple string values.
  /// [stringContains] Compares a value of an event using multiple string values.
  /// [stringEndsWiths] Compares a value of an event using multiple string values.
  /// [stringIns] Compares a value of an event using multiple string values.
  /// [stringNotBeginsWiths] Compares a value of an event using multiple string values.
  /// [stringNotContains] Compares a value of an event using multiple string values.
  /// [stringNotEndsWiths] Compares a value of an event using multiple string values.
  /// [stringNotIns] Compares a value of an event using multiple string values.
  EventSubscriptionAdvancedFilter({
    this.boolEquals,
    this.isNotNulls,
    this.isNullOrUndefineds,
    this.numberGreaterThanOrEquals,
    this.numberGreaterThans,
    this.numberInRanges,
    this.numberIns,
    this.numberLessThanOrEquals,
    this.numberLessThans,
    this.numberNotInRanges,
    this.numberNotIns,
    this.stringBeginsWiths,
    this.stringContains,
    this.stringEndsWiths,
    this.stringIns,
    this.stringNotBeginsWiths,
    this.stringNotContains,
    this.stringNotEndsWiths,
    this.stringNotIns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'boolEquals': ?boolEquals == null ? null : pulumi.Input.encodeList<EventSubscriptionAdvancedFilterBoolEqual, Map<String, dynamic>>(boolEquals!, (value) => value.toMap()),
      'isNotNulls': ?isNotNulls == null ? null : pulumi.Input.encodeList<EventSubscriptionAdvancedFilterIsNotNull, Map<String, dynamic>>(isNotNulls!, (value) => value.toMap()),
      'isNullOrUndefineds': ?isNullOrUndefineds == null ? null : pulumi.Input.encodeList<EventSubscriptionAdvancedFilterIsNullOrUndefined, Map<String, dynamic>>(isNullOrUndefineds!, (value) => value.toMap()),
      'numberGreaterThanOrEquals': ?numberGreaterThanOrEquals == null ? null : pulumi.Input.encodeList<EventSubscriptionAdvancedFilterNumberGreaterThanOrEqual, Map<String, dynamic>>(numberGreaterThanOrEquals!, (value) => value.toMap()),
      'numberGreaterThans': ?numberGreaterThans == null ? null : pulumi.Input.encodeList<EventSubscriptionAdvancedFilterNumberGreaterThan, Map<String, dynamic>>(numberGreaterThans!, (value) => value.toMap()),
      'numberInRanges': ?numberInRanges == null ? null : pulumi.Input.encodeList<EventSubscriptionAdvancedFilterNumberInRange, Map<String, dynamic>>(numberInRanges!, (value) => value.toMap()),
      'numberIns': ?numberIns == null ? null : pulumi.Input.encodeList<EventSubscriptionAdvancedFilterNumberIn, Map<String, dynamic>>(numberIns!, (value) => value.toMap()),
      'numberLessThanOrEquals': ?numberLessThanOrEquals == null ? null : pulumi.Input.encodeList<EventSubscriptionAdvancedFilterNumberLessThanOrEqual, Map<String, dynamic>>(numberLessThanOrEquals!, (value) => value.toMap()),
      'numberLessThans': ?numberLessThans == null ? null : pulumi.Input.encodeList<EventSubscriptionAdvancedFilterNumberLessThan, Map<String, dynamic>>(numberLessThans!, (value) => value.toMap()),
      'numberNotInRanges': ?numberNotInRanges == null ? null : pulumi.Input.encodeList<EventSubscriptionAdvancedFilterNumberNotInRange, Map<String, dynamic>>(numberNotInRanges!, (value) => value.toMap()),
      'numberNotIns': ?numberNotIns == null ? null : pulumi.Input.encodeList<EventSubscriptionAdvancedFilterNumberNotIn, Map<String, dynamic>>(numberNotIns!, (value) => value.toMap()),
      'stringBeginsWiths': ?stringBeginsWiths == null ? null : pulumi.Input.encodeList<EventSubscriptionAdvancedFilterStringBeginsWith, Map<String, dynamic>>(stringBeginsWiths!, (value) => value.toMap()),
      'stringContains': ?stringContains == null ? null : pulumi.Input.encodeList<EventSubscriptionAdvancedFilterStringContain, Map<String, dynamic>>(stringContains!, (value) => value.toMap()),
      'stringEndsWiths': ?stringEndsWiths == null ? null : pulumi.Input.encodeList<EventSubscriptionAdvancedFilterStringEndsWith, Map<String, dynamic>>(stringEndsWiths!, (value) => value.toMap()),
      'stringIns': ?stringIns == null ? null : pulumi.Input.encodeList<EventSubscriptionAdvancedFilterStringIn, Map<String, dynamic>>(stringIns!, (value) => value.toMap()),
      'stringNotBeginsWiths': ?stringNotBeginsWiths == null ? null : pulumi.Input.encodeList<EventSubscriptionAdvancedFilterStringNotBeginsWith, Map<String, dynamic>>(stringNotBeginsWiths!, (value) => value.toMap()),
      'stringNotContains': ?stringNotContains == null ? null : pulumi.Input.encodeList<EventSubscriptionAdvancedFilterStringNotContain, Map<String, dynamic>>(stringNotContains!, (value) => value.toMap()),
      'stringNotEndsWiths': ?stringNotEndsWiths == null ? null : pulumi.Input.encodeList<EventSubscriptionAdvancedFilterStringNotEndsWith, Map<String, dynamic>>(stringNotEndsWiths!, (value) => value.toMap()),
      'stringNotIns': ?stringNotIns == null ? null : pulumi.Input.encodeList<EventSubscriptionAdvancedFilterStringNotIn, Map<String, dynamic>>(stringNotIns!, (value) => value.toMap()),
    };
  }

  factory EventSubscriptionAdvancedFilter.fromMap(Map<String, dynamic> map) {
    return EventSubscriptionAdvancedFilter(
      boolEquals: map['boolEquals'] == null ? null : pulumi.Input.decodeList<EventSubscriptionAdvancedFilterBoolEqual>(map['boolEquals'], (value) => EventSubscriptionAdvancedFilterBoolEqual.fromMap((value as Map).cast<String, dynamic>())),
      isNotNulls: map['isNotNulls'] == null ? null : pulumi.Input.decodeList<EventSubscriptionAdvancedFilterIsNotNull>(map['isNotNulls'], (value) => EventSubscriptionAdvancedFilterIsNotNull.fromMap((value as Map).cast<String, dynamic>())),
      isNullOrUndefineds: map['isNullOrUndefineds'] == null ? null : pulumi.Input.decodeList<EventSubscriptionAdvancedFilterIsNullOrUndefined>(map['isNullOrUndefineds'], (value) => EventSubscriptionAdvancedFilterIsNullOrUndefined.fromMap((value as Map).cast<String, dynamic>())),
      numberGreaterThanOrEquals: map['numberGreaterThanOrEquals'] == null ? null : pulumi.Input.decodeList<EventSubscriptionAdvancedFilterNumberGreaterThanOrEqual>(map['numberGreaterThanOrEquals'], (value) => EventSubscriptionAdvancedFilterNumberGreaterThanOrEqual.fromMap((value as Map).cast<String, dynamic>())),
      numberGreaterThans: map['numberGreaterThans'] == null ? null : pulumi.Input.decodeList<EventSubscriptionAdvancedFilterNumberGreaterThan>(map['numberGreaterThans'], (value) => EventSubscriptionAdvancedFilterNumberGreaterThan.fromMap((value as Map).cast<String, dynamic>())),
      numberInRanges: map['numberInRanges'] == null ? null : pulumi.Input.decodeList<EventSubscriptionAdvancedFilterNumberInRange>(map['numberInRanges'], (value) => EventSubscriptionAdvancedFilterNumberInRange.fromMap((value as Map).cast<String, dynamic>())),
      numberIns: map['numberIns'] == null ? null : pulumi.Input.decodeList<EventSubscriptionAdvancedFilterNumberIn>(map['numberIns'], (value) => EventSubscriptionAdvancedFilterNumberIn.fromMap((value as Map).cast<String, dynamic>())),
      numberLessThanOrEquals: map['numberLessThanOrEquals'] == null ? null : pulumi.Input.decodeList<EventSubscriptionAdvancedFilterNumberLessThanOrEqual>(map['numberLessThanOrEquals'], (value) => EventSubscriptionAdvancedFilterNumberLessThanOrEqual.fromMap((value as Map).cast<String, dynamic>())),
      numberLessThans: map['numberLessThans'] == null ? null : pulumi.Input.decodeList<EventSubscriptionAdvancedFilterNumberLessThan>(map['numberLessThans'], (value) => EventSubscriptionAdvancedFilterNumberLessThan.fromMap((value as Map).cast<String, dynamic>())),
      numberNotInRanges: map['numberNotInRanges'] == null ? null : pulumi.Input.decodeList<EventSubscriptionAdvancedFilterNumberNotInRange>(map['numberNotInRanges'], (value) => EventSubscriptionAdvancedFilterNumberNotInRange.fromMap((value as Map).cast<String, dynamic>())),
      numberNotIns: map['numberNotIns'] == null ? null : pulumi.Input.decodeList<EventSubscriptionAdvancedFilterNumberNotIn>(map['numberNotIns'], (value) => EventSubscriptionAdvancedFilterNumberNotIn.fromMap((value as Map).cast<String, dynamic>())),
      stringBeginsWiths: map['stringBeginsWiths'] == null ? null : pulumi.Input.decodeList<EventSubscriptionAdvancedFilterStringBeginsWith>(map['stringBeginsWiths'], (value) => EventSubscriptionAdvancedFilterStringBeginsWith.fromMap((value as Map).cast<String, dynamic>())),
      stringContains: map['stringContains'] == null ? null : pulumi.Input.decodeList<EventSubscriptionAdvancedFilterStringContain>(map['stringContains'], (value) => EventSubscriptionAdvancedFilterStringContain.fromMap((value as Map).cast<String, dynamic>())),
      stringEndsWiths: map['stringEndsWiths'] == null ? null : pulumi.Input.decodeList<EventSubscriptionAdvancedFilterStringEndsWith>(map['stringEndsWiths'], (value) => EventSubscriptionAdvancedFilterStringEndsWith.fromMap((value as Map).cast<String, dynamic>())),
      stringIns: map['stringIns'] == null ? null : pulumi.Input.decodeList<EventSubscriptionAdvancedFilterStringIn>(map['stringIns'], (value) => EventSubscriptionAdvancedFilterStringIn.fromMap((value as Map).cast<String, dynamic>())),
      stringNotBeginsWiths: map['stringNotBeginsWiths'] == null ? null : pulumi.Input.decodeList<EventSubscriptionAdvancedFilterStringNotBeginsWith>(map['stringNotBeginsWiths'], (value) => EventSubscriptionAdvancedFilterStringNotBeginsWith.fromMap((value as Map).cast<String, dynamic>())),
      stringNotContains: map['stringNotContains'] == null ? null : pulumi.Input.decodeList<EventSubscriptionAdvancedFilterStringNotContain>(map['stringNotContains'], (value) => EventSubscriptionAdvancedFilterStringNotContain.fromMap((value as Map).cast<String, dynamic>())),
      stringNotEndsWiths: map['stringNotEndsWiths'] == null ? null : pulumi.Input.decodeList<EventSubscriptionAdvancedFilterStringNotEndsWith>(map['stringNotEndsWiths'], (value) => EventSubscriptionAdvancedFilterStringNotEndsWith.fromMap((value as Map).cast<String, dynamic>())),
      stringNotIns: map['stringNotIns'] == null ? null : pulumi.Input.decodeList<EventSubscriptionAdvancedFilterStringNotIn>(map['stringNotIns'], (value) => EventSubscriptionAdvancedFilterStringNotIn.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

