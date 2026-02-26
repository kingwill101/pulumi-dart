/// Required. Data type must be specifed when user tries to import data.
enum GoogleCloudDatalabelingV1beta1InputConfigDataType {
  dataTypeUnspecified("DATA_TYPE_UNSPECIFIED"),
  image("IMAGE"),
  video("VIDEO"),
  text("TEXT"),
  generalData("GENERAL_DATA");

  const GoogleCloudDatalabelingV1beta1InputConfigDataType(this.value);
  final String value;

  static GoogleCloudDatalabelingV1beta1InputConfigDataType fromValue(
      String value) {
    for (final item
        in GoogleCloudDatalabelingV1beta1InputConfigDataType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown GoogleCloudDatalabelingV1beta1InputConfigDataType value: $value');
  }
}
