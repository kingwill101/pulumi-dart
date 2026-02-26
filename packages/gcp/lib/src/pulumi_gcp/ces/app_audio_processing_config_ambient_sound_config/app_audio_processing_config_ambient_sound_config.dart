// ignore_for_file: unused_element, unnecessary_cast

class AppAudioProcessingConfigAmbientSoundConfig {
  /// Ambient noise as a mono-channel, 16kHz WAV file stored in [Cloud
  /// Storage](https://cloud.google.com/storage).
  /// Note: Please make sure the CES service agent
  /// `service-@gcp-sa-ces.iam.gserviceaccount.com` has
  /// `storage.objects.get` permission to the Cloud Storage object.
  final String? gcsUri;

  /// Name of the prebuilt ambient sound.
  /// Valid values are: - <span pulumi-lang-nodejs=""coffeeShop"" pulumi-lang-dotnet=""CoffeeShop"" pulumi-lang-go=""coffeeShop"" pulumi-lang-python=""coffee_shop"" pulumi-lang-yaml=""coffeeShop"" pulumi-lang-java=""coffeeShop"">"coffee_shop"</span> - "keyboard" - "keypad" - "hum"
  /// -<span pulumi-lang-nodejs=""office1"" pulumi-lang-dotnet=""Office1"" pulumi-lang-go=""office1"" pulumi-lang-python=""office_1"" pulumi-lang-yaml=""office1"" pulumi-lang-java=""office1"">"office_1"</span> - <span pulumi-lang-nodejs=""office2"" pulumi-lang-dotnet=""Office2"" pulumi-lang-go=""office2"" pulumi-lang-python=""office_2"" pulumi-lang-yaml=""office2"" pulumi-lang-java=""office2"">"office_2"</span> - <span pulumi-lang-nodejs=""office3"" pulumi-lang-dotnet=""Office3"" pulumi-lang-go=""office3"" pulumi-lang-python=""office_3"" pulumi-lang-yaml=""office3"" pulumi-lang-java=""office3"">"office_3"</span>
  /// -<span pulumi-lang-nodejs=""room1"" pulumi-lang-dotnet=""Room1"" pulumi-lang-go=""room1"" pulumi-lang-python=""room_1"" pulumi-lang-yaml=""room1"" pulumi-lang-java=""room1"">"room_1"</span> - <span pulumi-lang-nodejs=""room2"" pulumi-lang-dotnet=""Room2"" pulumi-lang-go=""room2"" pulumi-lang-python=""room_2"" pulumi-lang-yaml=""room2"" pulumi-lang-java=""room2"">"room_2"</span> - <span pulumi-lang-nodejs=""room3"" pulumi-lang-dotnet=""Room3"" pulumi-lang-go=""room3"" pulumi-lang-python=""room_3"" pulumi-lang-yaml=""room3"" pulumi-lang-java=""room3"">"room_3"</span>
  /// -<span pulumi-lang-nodejs=""room4"" pulumi-lang-dotnet=""Room4"" pulumi-lang-go=""room4"" pulumi-lang-python=""room_4"" pulumi-lang-yaml=""room4"" pulumi-lang-java=""room4"">"room_4"</span> - <span pulumi-lang-nodejs=""room5"" pulumi-lang-dotnet=""Room5"" pulumi-lang-go=""room5"" pulumi-lang-python=""room_5"" pulumi-lang-yaml=""room5"" pulumi-lang-java=""room5"">"room_5"</span> - <span pulumi-lang-nodejs=""airConditioner"" pulumi-lang-dotnet=""AirConditioner"" pulumi-lang-go=""airConditioner"" pulumi-lang-python=""air_conditioner"" pulumi-lang-yaml=""airConditioner"" pulumi-lang-java=""airConditioner"">"air_conditioner"</span>
  final String? prebuiltAmbientSound;

  /// Volume gain (in dB) of the normal native volume supported by
  /// ambient noise, in the range [-96.0, 16.0]. If unset, or set to a value of
  /// 0.0 (dB), will play at normal native signal amplitude. A value of -6.0 (dB)
  /// will play at approximately half the amplitude of the normal native signal
  /// amplitude. A value of +6.0 (dB) will play at approximately twice the
  /// amplitude of the normal native signal amplitude. We strongly recommend not
  /// to exceed +10 (dB) as there's usually no effective increase in loudness for
  /// any value greater than that.
  final double? volumeGainDb;

  AppAudioProcessingConfigAmbientSoundConfig({
    this.gcsUri,
    this.prebuiltAmbientSound,
    this.volumeGainDb,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final gcsUriValue = gcsUri;
    if (gcsUriValue != null) {
      map['gcsUri'] = gcsUriValue;
    }
    final prebuiltAmbientSoundValue = prebuiltAmbientSound;
    if (prebuiltAmbientSoundValue != null) {
      map['prebuiltAmbientSound'] = prebuiltAmbientSoundValue;
    }
    final volumeGainDbValue = volumeGainDb;
    if (volumeGainDbValue != null) {
      map['volumeGainDb'] = volumeGainDbValue;
    }
    return map;
  }

  factory AppAudioProcessingConfigAmbientSoundConfig.fromMap(
      Map<String, dynamic> map) {
    return AppAudioProcessingConfigAmbientSoundConfig(
      gcsUri: map['gcsUri'] == null ? null : map['gcsUri'] as String,
      prebuiltAmbientSound: map['prebuiltAmbientSound'] == null
          ? null
          : map['prebuiltAmbientSound'] as String,
      volumeGainDb:
          map['volumeGainDb'] == null ? null : map['volumeGainDb'] as double,
    );
  }
}
