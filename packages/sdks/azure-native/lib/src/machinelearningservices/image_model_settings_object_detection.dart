// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mlflow_model_job_input.dart';

/// Settings used for training the model.
/// For more information on the available settings please visit the official documentation:
/// https://docs.microsoft.com/en-us/azure/machine-learning/how-to-auto-train-image-models.
class ImageModelSettingsObjectDetection {
  /// Settings for advanced scenarios.
  final pulumi.Input<String>? advancedSettings;
  /// Enable AMSGrad when optimizer is 'adam' or 'adamw'.
  final pulumi.Input<bool>? amsGradient;
  /// Settings for using Augmentations.
  final pulumi.Input<String>? augmentations;
  /// Value of 'beta1' when optimizer is 'adam' or 'adamw'. Must be a float in the range [0, 1].
  final pulumi.Input<double>? beta1;
  /// Value of 'beta2' when optimizer is 'adam' or 'adamw'. Must be a float in the range [0, 1].
  final pulumi.Input<double>? beta2;
  /// Maximum number of detections per image, for all classes. Must be a positive integer.
  /// Note: This settings is not supported for the 'yolov5' algorithm.
  final pulumi.Input<int>? boxDetectionsPerImage;
  /// During inference, only return proposals with a classification score greater than
  /// BoxScoreThreshold. Must be a float in the range[0, 1].
  final pulumi.Input<double>? boxScoreThreshold;
  /// Frequency to store model checkpoints. Must be a positive integer.
  final pulumi.Input<int>? checkpointFrequency;
  /// The pretrained checkpoint model for incremental training.
  final pulumi.Input<MLFlowModelJobInput>? checkpointModel;
  /// The id of a previous run that has a pretrained checkpoint for incremental training.
  final pulumi.Input<String>? checkpointRunId;
  /// Whether to use distributed training.
  final pulumi.Input<bool>? distributed;
  /// Enable early stopping logic during training.
  final pulumi.Input<bool>? earlyStopping;
  /// Minimum number of epochs or validation evaluations to wait before primary metric improvement
  /// is tracked for early stopping. Must be a positive integer.
  final pulumi.Input<int>? earlyStoppingDelay;
  /// Minimum number of epochs or validation evaluations with no primary metric improvement before
  /// the run is stopped. Must be a positive integer.
  final pulumi.Input<int>? earlyStoppingPatience;
  /// Enable normalization when exporting ONNX model.
  final pulumi.Input<bool>? enableOnnxNormalization;
  /// Frequency to evaluate validation dataset to get metric scores. Must be a positive integer.
  final pulumi.Input<int>? evaluationFrequency;
  /// Gradient accumulation means running a configured number of "GradAccumulationStep" steps without
  /// updating the model weights while accumulating the gradients of those steps, and then using
  /// the accumulated gradients to compute the weight updates. Must be a positive integer.
  final pulumi.Input<int>? gradientAccumulationStep;
  /// Image size for train and validation. Must be a positive integer.
  /// Note: The training run may get into CUDA OOM if the size is too big.
  /// Note: This settings is only supported for the 'yolov5' algorithm.
  final pulumi.Input<int>? imageSize;
  /// Number of layers to freeze for the model. Must be a positive integer.
  /// For instance, passing 2 as value for 'seresnext' means
  /// freezing layer0 and layer1. For a full list of models supported and details on layer freeze, please
  /// see: https://docs.microsoft.com/en-us/azure/machine-learning/how-to-auto-train-image-models.
  final pulumi.Input<int>? layersToFreeze;
  /// Initial learning rate. Must be a float in the range [0, 1].
  final pulumi.Input<double>? learningRate;
  /// Type of learning rate scheduler. Must be 'warmup_cosine' or 'step'.
  final pulumi.Input<String>? learningRateScheduler;
  /// Maximum size of the image to be rescaled before feeding it to the backbone.
  /// Must be a positive integer. Note: training run may get into CUDA OOM if the size is too big.
  /// Note: This settings is not supported for the 'yolov5' algorithm.
  final pulumi.Input<int>? maxSize;
  /// Minimum size of the image to be rescaled before feeding it to the backbone.
  /// Must be a positive integer. Note: training run may get into CUDA OOM if the size is too big.
  /// Note: This settings is not supported for the 'yolov5' algorithm.
  final pulumi.Input<int>? minSize;
  /// Name of the model to use for training.
  /// For more information on the available models please visit the official documentation:
  /// https://docs.microsoft.com/en-us/azure/machine-learning/how-to-auto-train-image-models.
  final pulumi.Input<String>? modelName;
  /// Model size. Must be 'small', 'medium', 'large', or 'xlarge'.
  /// Note: training run may get into CUDA OOM if the model size is too big.
  /// Note: This settings is only supported for the 'yolov5' algorithm.
  final pulumi.Input<String>? modelSize;
  /// Value of momentum when optimizer is 'sgd'. Must be a float in the range [0, 1].
  final pulumi.Input<double>? momentum;
  /// Enable multi-scale image by varying image size by +/- 50%.
  /// Note: training run may get into CUDA OOM if no sufficient GPU memory.
  /// Note: This settings is only supported for the 'yolov5' algorithm.
  final pulumi.Input<bool>? multiScale;
  /// Enable nesterov when optimizer is 'sgd'.
  final pulumi.Input<bool>? nesterov;
  /// IOU threshold used during inference in NMS post processing. Must be a float in the range [0, 1].
  final pulumi.Input<double>? nmsIouThreshold;
  /// Number of training epochs. Must be a positive integer.
  final pulumi.Input<int>? numberOfEpochs;
  /// Number of data loader workers. Must be a non-negative integer.
  final pulumi.Input<int>? numberOfWorkers;
  /// Type of optimizer.
  final pulumi.Input<String>? optimizer;
  /// Random seed to be used when using deterministic training.
  final pulumi.Input<int>? randomSeed;
  /// Value of gamma when learning rate scheduler is 'step'. Must be a float in the range [0, 1].
  final pulumi.Input<double>? stepLRGamma;
  /// Value of step size when learning rate scheduler is 'step'. Must be a positive integer.
  final pulumi.Input<int>? stepLRStepSize;
  /// The grid size to use for tiling each image. Note: TileGridSize must not be
  /// None to enable small object detection logic. A string containing two integers in mxn format.
  /// Note: This settings is not supported for the 'yolov5' algorithm.
  final pulumi.Input<String>? tileGridSize;
  /// Overlap ratio between adjacent tiles in each dimension. Must be float in the range [0, 1).
  /// Note: This settings is not supported for the 'yolov5' algorithm.
  final pulumi.Input<double>? tileOverlapRatio;
  /// The IOU threshold to use to perform NMS while merging predictions from tiles and image.
  /// Used in validation/ inference. Must be float in the range [0, 1].
  /// Note: This settings is not supported for the 'yolov5' algorithm.
  final pulumi.Input<double>? tilePredictionsNmsThreshold;
  /// Training batch size. Must be a positive integer.
  final pulumi.Input<int>? trainingBatchSize;
  /// Validation batch size. Must be a positive integer.
  final pulumi.Input<int>? validationBatchSize;
  /// IOU threshold to use when computing validation metric. Must be float in the range [0, 1].
  final pulumi.Input<double>? validationIouThreshold;
  /// Metric computation method to use for validation metrics.
  final pulumi.Input<String>? validationMetricType;
  /// Value of cosine cycle when learning rate scheduler is 'warmup_cosine'. Must be a float in the range [0, 1].
  final pulumi.Input<double>? warmupCosineLRCycles;
  /// Value of warmup epochs when learning rate scheduler is 'warmup_cosine'. Must be a positive integer.
  final pulumi.Input<int>? warmupCosineLRWarmupEpochs;
  /// Value of weight decay when optimizer is 'sgd', 'adam', or 'adamw'. Must be a float in the range[0, 1].
  final pulumi.Input<double>? weightDecay;

  /// Creates a new [ImageModelSettingsObjectDetection].
  /// [advancedSettings] Settings for advanced scenarios.
  /// [amsGradient] Enable AMSGrad when optimizer is 'adam' or 'adamw'.
  /// [augmentations] Settings for using Augmentations.
  /// [beta1] Value of 'beta1' when optimizer is 'adam' or 'adamw'. Must be a float in the range [0, 1].
  /// [beta2] Value of 'beta2' when optimizer is 'adam' or 'adamw'. Must be a float in the range [0, 1].
  /// [boxDetectionsPerImage] Maximum number of detections per image, for all classes. Must be a positive integer.
  /// [boxScoreThreshold] During inference, only return proposals with a classification score greater than
  /// [checkpointFrequency] Frequency to store model checkpoints. Must be a positive integer.
  /// [checkpointModel] The pretrained checkpoint model for incremental training.
  /// [checkpointRunId] The id of a previous run that has a pretrained checkpoint for incremental training.
  /// [distributed] Whether to use distributed training.
  /// [earlyStopping] Enable early stopping logic during training.
  /// [earlyStoppingDelay] Minimum number of epochs or validation evaluations to wait before primary metric improvement
  /// [earlyStoppingPatience] Minimum number of epochs or validation evaluations with no primary metric improvement before
  /// [enableOnnxNormalization] Enable normalization when exporting ONNX model.
  /// [evaluationFrequency] Frequency to evaluate validation dataset to get metric scores. Must be a positive integer.
  /// [gradientAccumulationStep] Gradient accumulation means running a configured number of "GradAccumulationStep" steps without
  /// [imageSize] Image size for train and validation. Must be a positive integer.
  /// [layersToFreeze] Number of layers to freeze for the model. Must be a positive integer.
  /// [learningRate] Initial learning rate. Must be a float in the range [0, 1].
  /// [learningRateScheduler] Type of learning rate scheduler. Must be 'warmup_cosine' or 'step'.
  /// [maxSize] Maximum size of the image to be rescaled before feeding it to the backbone.
  /// [minSize] Minimum size of the image to be rescaled before feeding it to the backbone.
  /// [modelName] Name of the model to use for training.
  /// [modelSize] Model size. Must be 'small', 'medium', 'large', or 'xlarge'.
  /// [momentum] Value of momentum when optimizer is 'sgd'. Must be a float in the range [0, 1].
  /// [multiScale] Enable multi-scale image by varying image size by +/- 50%.
  /// [nesterov] Enable nesterov when optimizer is 'sgd'.
  /// [nmsIouThreshold] IOU threshold used during inference in NMS post processing. Must be a float in the range [0, 1].
  /// [numberOfEpochs] Number of training epochs. Must be a positive integer.
  /// [numberOfWorkers] Number of data loader workers. Must be a non-negative integer.
  /// [optimizer] Type of optimizer.
  /// [randomSeed] Random seed to be used when using deterministic training.
  /// [stepLRGamma] Value of gamma when learning rate scheduler is 'step'. Must be a float in the range [0, 1].
  /// [stepLRStepSize] Value of step size when learning rate scheduler is 'step'. Must be a positive integer.
  /// [tileGridSize] The grid size to use for tiling each image. Note: TileGridSize must not be
  /// [tileOverlapRatio] Overlap ratio between adjacent tiles in each dimension. Must be float in the range [0, 1).
  /// [tilePredictionsNmsThreshold] The IOU threshold to use to perform NMS while merging predictions from tiles and image.
  /// [trainingBatchSize] Training batch size. Must be a positive integer.
  /// [validationBatchSize] Validation batch size. Must be a positive integer.
  /// [validationIouThreshold] IOU threshold to use when computing validation metric. Must be float in the range [0, 1].
  /// [validationMetricType] Metric computation method to use for validation metrics.
  /// [warmupCosineLRCycles] Value of cosine cycle when learning rate scheduler is 'warmup_cosine'. Must be a float in the range [0, 1].
  /// [warmupCosineLRWarmupEpochs] Value of warmup epochs when learning rate scheduler is 'warmup_cosine'. Must be a positive integer.
  /// [weightDecay] Value of weight decay when optimizer is 'sgd', 'adam', or 'adamw'. Must be a float in the range[0, 1].
  ImageModelSettingsObjectDetection({
    this.advancedSettings,
    this.amsGradient,
    this.augmentations,
    this.beta1,
    this.beta2,
    this.boxDetectionsPerImage,
    this.boxScoreThreshold,
    this.checkpointFrequency,
    this.checkpointModel,
    this.checkpointRunId,
    this.distributed,
    this.earlyStopping,
    this.earlyStoppingDelay,
    this.earlyStoppingPatience,
    this.enableOnnxNormalization,
    this.evaluationFrequency,
    this.gradientAccumulationStep,
    this.imageSize,
    this.layersToFreeze,
    this.learningRate,
    this.learningRateScheduler,
    this.maxSize,
    this.minSize,
    this.modelName,
    this.modelSize,
    this.momentum,
    this.multiScale,
    this.nesterov,
    this.nmsIouThreshold,
    this.numberOfEpochs,
    this.numberOfWorkers,
    this.optimizer,
    this.randomSeed,
    this.stepLRGamma,
    this.stepLRStepSize,
    this.tileGridSize,
    this.tileOverlapRatio,
    this.tilePredictionsNmsThreshold,
    this.trainingBatchSize,
    this.validationBatchSize,
    this.validationIouThreshold,
    this.validationMetricType,
    this.warmupCosineLRCycles,
    this.warmupCosineLRWarmupEpochs,
    this.weightDecay,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedSettings': ?advancedSettings,
      'amsGradient': ?amsGradient,
      'augmentations': ?augmentations,
      'beta1': ?beta1,
      'beta2': ?beta2,
      'boxDetectionsPerImage': ?boxDetectionsPerImage,
      'boxScoreThreshold': ?boxScoreThreshold,
      'checkpointFrequency': ?checkpointFrequency,
      'checkpointModel': ?pulumi.Input.mapOptionalInputValue<MLFlowModelJobInput, Map<String, dynamic>>(checkpointModel, (value) => value.toMap()),
      'checkpointRunId': ?checkpointRunId,
      'distributed': ?distributed,
      'earlyStopping': ?earlyStopping,
      'earlyStoppingDelay': ?earlyStoppingDelay,
      'earlyStoppingPatience': ?earlyStoppingPatience,
      'enableOnnxNormalization': ?enableOnnxNormalization,
      'evaluationFrequency': ?evaluationFrequency,
      'gradientAccumulationStep': ?gradientAccumulationStep,
      'imageSize': ?imageSize,
      'layersToFreeze': ?layersToFreeze,
      'learningRate': ?learningRate,
      'learningRateScheduler': ?learningRateScheduler,
      'maxSize': ?maxSize,
      'minSize': ?minSize,
      'modelName': ?modelName,
      'modelSize': ?modelSize,
      'momentum': ?momentum,
      'multiScale': ?multiScale,
      'nesterov': ?nesterov,
      'nmsIouThreshold': ?nmsIouThreshold,
      'numberOfEpochs': ?numberOfEpochs,
      'numberOfWorkers': ?numberOfWorkers,
      'optimizer': ?optimizer,
      'randomSeed': ?randomSeed,
      'stepLRGamma': ?stepLRGamma,
      'stepLRStepSize': ?stepLRStepSize,
      'tileGridSize': ?tileGridSize,
      'tileOverlapRatio': ?tileOverlapRatio,
      'tilePredictionsNmsThreshold': ?tilePredictionsNmsThreshold,
      'trainingBatchSize': ?trainingBatchSize,
      'validationBatchSize': ?validationBatchSize,
      'validationIouThreshold': ?validationIouThreshold,
      'validationMetricType': ?validationMetricType,
      'warmupCosineLRCycles': ?warmupCosineLRCycles,
      'warmupCosineLRWarmupEpochs': ?warmupCosineLRWarmupEpochs,
      'weightDecay': ?weightDecay,
    };
  }

  factory ImageModelSettingsObjectDetection.fromMap(Map<String, dynamic> map) {
    return ImageModelSettingsObjectDetection(
      advancedSettings: map['advancedSettings'] == null ? null : (map['advancedSettings']! as String).input(),
      amsGradient: map['amsGradient'] == null ? null : (map['amsGradient']! as bool).input(),
      augmentations: map['augmentations'] == null ? null : (map['augmentations']! as String).input(),
      beta1: map['beta1'] == null ? null : (map['beta1']! as double).input(),
      beta2: map['beta2'] == null ? null : (map['beta2']! as double).input(),
      boxDetectionsPerImage: map['boxDetectionsPerImage'] == null ? null : (map['boxDetectionsPerImage']! as int).input(),
      boxScoreThreshold: map['boxScoreThreshold'] == null ? null : (map['boxScoreThreshold']! as double).input(),
      checkpointFrequency: map['checkpointFrequency'] == null ? null : (map['checkpointFrequency']! as int).input(),
      checkpointModel: map['checkpointModel'] == null ? null : (MLFlowModelJobInput.fromMap((map['checkpointModel']! as Map).cast<String, dynamic>())).input(),
      checkpointRunId: map['checkpointRunId'] == null ? null : (map['checkpointRunId']! as String).input(),
      distributed: map['distributed'] == null ? null : (map['distributed']! as bool).input(),
      earlyStopping: map['earlyStopping'] == null ? null : (map['earlyStopping']! as bool).input(),
      earlyStoppingDelay: map['earlyStoppingDelay'] == null ? null : (map['earlyStoppingDelay']! as int).input(),
      earlyStoppingPatience: map['earlyStoppingPatience'] == null ? null : (map['earlyStoppingPatience']! as int).input(),
      enableOnnxNormalization: map['enableOnnxNormalization'] == null ? null : (map['enableOnnxNormalization']! as bool).input(),
      evaluationFrequency: map['evaluationFrequency'] == null ? null : (map['evaluationFrequency']! as int).input(),
      gradientAccumulationStep: map['gradientAccumulationStep'] == null ? null : (map['gradientAccumulationStep']! as int).input(),
      imageSize: map['imageSize'] == null ? null : (map['imageSize']! as int).input(),
      layersToFreeze: map['layersToFreeze'] == null ? null : (map['layersToFreeze']! as int).input(),
      learningRate: map['learningRate'] == null ? null : (map['learningRate']! as double).input(),
      learningRateScheduler: map['learningRateScheduler'] == null ? null : (map['learningRateScheduler']! as String).input(),
      maxSize: map['maxSize'] == null ? null : (map['maxSize']! as int).input(),
      minSize: map['minSize'] == null ? null : (map['minSize']! as int).input(),
      modelName: map['modelName'] == null ? null : (map['modelName']! as String).input(),
      modelSize: map['modelSize'] == null ? null : (map['modelSize']! as String).input(),
      momentum: map['momentum'] == null ? null : (map['momentum']! as double).input(),
      multiScale: map['multiScale'] == null ? null : (map['multiScale']! as bool).input(),
      nesterov: map['nesterov'] == null ? null : (map['nesterov']! as bool).input(),
      nmsIouThreshold: map['nmsIouThreshold'] == null ? null : (map['nmsIouThreshold']! as double).input(),
      numberOfEpochs: map['numberOfEpochs'] == null ? null : (map['numberOfEpochs']! as int).input(),
      numberOfWorkers: map['numberOfWorkers'] == null ? null : (map['numberOfWorkers']! as int).input(),
      optimizer: map['optimizer'] == null ? null : (map['optimizer']! as String).input(),
      randomSeed: map['randomSeed'] == null ? null : (map['randomSeed']! as int).input(),
      stepLRGamma: map['stepLRGamma'] == null ? null : (map['stepLRGamma']! as double).input(),
      stepLRStepSize: map['stepLRStepSize'] == null ? null : (map['stepLRStepSize']! as int).input(),
      tileGridSize: map['tileGridSize'] == null ? null : (map['tileGridSize']! as String).input(),
      tileOverlapRatio: map['tileOverlapRatio'] == null ? null : (map['tileOverlapRatio']! as double).input(),
      tilePredictionsNmsThreshold: map['tilePredictionsNmsThreshold'] == null ? null : (map['tilePredictionsNmsThreshold']! as double).input(),
      trainingBatchSize: map['trainingBatchSize'] == null ? null : (map['trainingBatchSize']! as int).input(),
      validationBatchSize: map['validationBatchSize'] == null ? null : (map['validationBatchSize']! as int).input(),
      validationIouThreshold: map['validationIouThreshold'] == null ? null : (map['validationIouThreshold']! as double).input(),
      validationMetricType: map['validationMetricType'] == null ? null : (map['validationMetricType']! as String).input(),
      warmupCosineLRCycles: map['warmupCosineLRCycles'] == null ? null : (map['warmupCosineLRCycles']! as double).input(),
      warmupCosineLRWarmupEpochs: map['warmupCosineLRWarmupEpochs'] == null ? null : (map['warmupCosineLRWarmupEpochs']! as int).input(),
      weightDecay: map['weightDecay'] == null ? null : (map['weightDecay']! as double).input(),
    );
  }
}

