/// The type of assertion to perform.
enum GoogleCloudIntegrationsV1alphaAssertionAssertionStrategy {
  assertionStrategyUnspecified("ASSERTION_STRATEGY_UNSPECIFIED"),
  assertSuccessfulExecution("ASSERT_SUCCESSFUL_EXECUTION"),
  assertFailedExecution("ASSERT_FAILED_EXECUTION"),
  assertNoExecution("ASSERT_NO_EXECUTION"),
  assertEquals("ASSERT_EQUALS"),
  assertNotEquals("ASSERT_NOT_EQUALS"),
  assertContains("ASSERT_CONTAINS"),
  assertCondition("ASSERT_CONDITION");

  const GoogleCloudIntegrationsV1alphaAssertionAssertionStrategy(this.value);
  final String value;

  static GoogleCloudIntegrationsV1alphaAssertionAssertionStrategy fromValue(
      String value) {
    for (final item
        in GoogleCloudIntegrationsV1alphaAssertionAssertionStrategy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown GoogleCloudIntegrationsV1alphaAssertionAssertionStrategy value: $value');
  }
}
