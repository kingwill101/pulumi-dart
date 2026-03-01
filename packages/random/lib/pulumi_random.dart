// ignore_for_file: non_constant_identifier_names

library pulumi_random;

import 'package:pulumi_random/index.dart' as _index;
import 'package:pulumi_random/providers.dart' as _providers;

final index = _IndexModuleNamespace();
final providers = _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  _IndexModuleNamespace();
  final RandomBytes = _index.RandomBytes.new;
  final RandomBytesArgs = _index.RandomBytesArgs.new;
  final RandomId = _index.RandomId.new;
  final RandomIdArgs = _index.RandomIdArgs.new;
  final RandomInteger = _index.RandomInteger.new;
  final RandomIntegerArgs = _index.RandomIntegerArgs.new;
  final RandomPassword = _index.RandomPassword.new;
  final RandomPasswordArgs = _index.RandomPasswordArgs.new;
  final RandomPet = _index.RandomPet.new;
  final RandomPetArgs = _index.RandomPetArgs.new;
  final RandomShuffle = _index.RandomShuffle.new;
  final RandomShuffleArgs = _index.RandomShuffleArgs.new;
  final RandomString = _index.RandomString.new;
  final RandomStringArgs = _index.RandomStringArgs.new;
  final RandomUuid = _index.RandomUuid.new;
  final RandomUuid4 = _index.RandomUuid4.new;
  final RandomUuid4Args = _index.RandomUuid4Args.new;
  final RandomUuid7 = _index.RandomUuid7.new;
  final RandomUuid7Args = _index.RandomUuid7Args.new;
  final RandomUuidArgs = _index.RandomUuidArgs.new;
}

class _ProvidersModuleNamespace {
  _ProvidersModuleNamespace();
  final TerraformConfigArgs = _providers.TerraformConfigArgs.new;
  final TerraformConfigResult = _providers.TerraformConfigResult.new;
  final TerraformConfigResultArgs = _providers.TerraformConfigResult.new;
  final terraformConfig = _providers.terraformConfig;
}
